#!/usr/bin/env bash
# Roda a cada 2 minutos na máquina de render (cron). Pergunta ao Supabase se tem trabalho (mineração de takes ou
# render); só chama o Claude quando tem. A trava (flock) impede dois trabalhos ao mesmo tempo.
# Igor, 15/11: "pq eu tenho que ficar mandando essas coisas na outra máquina?" — este script se atualiza sozinho
# a partir do Supabase (app_config.render_maquina_script) e as instruções vêm junto com cada trabalho.
set -uo pipefail

source "$HOME/.render-fila.env"   # RENDER_URL e RENDER_TOKEN; o token nunca vai para log
SKILL_DIR="${SKILL_DIR:-$HOME/.claude/skills/criativos-sda}"
JOBS="$HOME/render-jobs"
mkdir -p "$JOBS"
EU="$(readlink -f "$0")"

chamar() { curl -fsS --max-time 60 -X POST "$RENDER_URL" -H "x-render-token: $RENDER_TOKEN" -H 'Content-Type: application/json' -d "$1"; }

# 1) atualiza a si mesmo antes de tudo, para a versão nova valer já neste ciclo
if [ -z "${RENDER_FILA_ATUALIZADO:-}" ]; then
  novo=$(chamar '{"acao":"script"}' 2>/dev/null | python3 -c 'import json,sys;print(json.load(sys.stdin).get("script",""),end="")' 2>/dev/null || true)
  if [ -n "$novo" ] && [ "$novo" != "$(cat "$EU")" ] && printf '%s' "$novo" | bash -n 2>/dev/null; then
    printf '%s' "$novo" > "$EU.novo" && chmod +x "$EU.novo" && mv "$EU.novo" "$EU"
    echo "$(date -Is) script atualizado" >> "$JOBS/render-fila.log"
    RENDER_FILA_ATUALIZADO=1 exec bash "$EU"
  fi
fi

exec 9>/tmp/render-fila.lock
flock -n 9 || exit 0

resp=$(chamar '{"acao":"pegar","maquina":"aws-render"}') || exit 0
echo "$resp" | grep -q '"oferta_id"' || exit 0

dir="$JOBS/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$dir"
echo "$resp" > "$dir/pedido.json"
campo() { python3 -c 'import json,sys;print(json.load(open(sys.argv[1])).get(sys.argv[2],""))' "$dir/pedido.json" "$1"; }
oferta=$(campo oferta_id); job=$(campo job); etapa=$(campo etapa); [ -n "$etapa" ] || etapa=render
echo "$(date -Is) pegou $etapa $oferta" >> "$JOBS/render-fila.log"

instr=$(campo instrucoes)
[ -n "$instr" ] || instr="$(cat "$HOME/render-maquina/prompt.md" 2>/dev/null)"
prompt="$instr

PEDIDO: $dir/pedido.json
RESULTADO (escreva aqui): $dir/resultado.json"

corpo_erro() { python3 -c 'import json,sys;print(json.dumps({"acao":"erro","oferta_id":sys.argv[1],"job":sys.argv[2],"etapa":sys.argv[3],"erro":sys.argv[4]+sys.stdin.read()}))' "$oferta" "$job" "$etapa" "$1"; }

if ! cd "$SKILL_DIR"; then
  chamar "$(echo '' | corpo_erro 'pasta da skill não encontrada')" >/dev/null
  exit 1
fi

timeout 3h claude -p "$prompt" \
  --allowedTools "Bash Read Write Edit Glob Grep WebFetch" \
  --permission-mode acceptEdits \
  > "$dir/claude.log" 2>&1 &
pid=$!

# 2) vigia: se o trabalho for cancelado no fluxo, para o Claude e libera a máquina
while kill -0 "$pid" 2>/dev/null; do
  sleep 60
  pergunta=$(python3 -c 'import json,sys;print(json.dumps({"acao":"ainda_vale","oferta_id":sys.argv[1],"job":sys.argv[2],"etapa":sys.argv[3]}))' "$oferta" "$job" "$etapa")
  vale=$(chamar "$pergunta" 2>/dev/null | python3 -c 'import json,sys;print(json.load(sys.stdin).get("vale",True))' 2>/dev/null || echo True)
  if [ "$vale" = "False" ]; then
    pkill -TERM -P "$pid" 2>/dev/null; kill -TERM "$pid" 2>/dev/null
    echo "$(date -Is) cancelado no fluxo: $etapa $oferta" >> "$JOBS/render-fila.log"
    exit 0
  fi
done
wait "$pid"; codigo=$?

if [ -s "$dir/resultado.json" ] && python3 -c 'import json,sys;json.load(open(sys.argv[1]))' "$dir/resultado.json" 2>/dev/null; then
  corpo=$(python3 -c 'import json,sys;print(json.dumps({"acao":"devolver","oferta_id":sys.argv[2],"job":sys.argv[3],"etapa":sys.argv[4],"resultado":json.load(open(sys.argv[1]))}))' "$dir/resultado.json" "$oferta" "$job" "$etapa")
  chamar "$corpo" >> "$JOBS/render-fila.log" 2>&1
  echo "$(date -Is) devolveu $etapa $oferta" >> "$JOBS/render-fila.log"
else
  chamar "$(tail -c 1500 "$dir/claude.log" | corpo_erro "saida $codigo: ")" >> "$JOBS/render-fila.log" 2>&1
  echo "$(date -Is) erro $etapa $oferta (código $codigo)" >> "$JOBS/render-fila.log"
fi
