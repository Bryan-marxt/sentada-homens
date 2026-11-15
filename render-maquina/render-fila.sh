#!/usr/bin/env bash
# Roda a cada 2 minutos na máquina de render (cron). Pergunta ao Supabase se tem render na fila; só chama o Claude
# quando tem. A trava (flock) impede dois renders ao mesmo tempo: enquanto um roda, os próximos disparos saem na hora.
set -uo pipefail

exec 9>/tmp/render-fila.lock
flock -n 9 || exit 0

# RENDER_URL e RENDER_TOKEN (ver INSTALAR.md). O token nunca vai para log.
source "$HOME/.render-fila.env"
SKILL_DIR="${SKILL_DIR:-$HOME/.claude/skills/criativos-sda}"
JOBS="$HOME/render-jobs"
mkdir -p "$JOBS"

chamar() { curl -fsS --max-time 60 -X POST "$RENDER_URL" -H "x-render-token: $RENDER_TOKEN" -H 'Content-Type: application/json' -d "$1"; }

resp=$(chamar '{"acao":"pegar","maquina":"aws-render"}') || exit 0
echo "$resp" | grep -q '"oferta_id"' || exit 0

dir="$JOBS/$(date +%Y%m%d-%H%M%S)"
mkdir -p "$dir"
echo "$resp" > "$dir/pedido.json"
oferta=$(python3 -c 'import json,sys;print(json.load(open(sys.argv[1]))["oferta_id"])' "$dir/pedido.json")
job=$(python3 -c 'import json,sys;print(json.load(open(sys.argv[1])).get("job",""))' "$dir/pedido.json")
echo "$(date -Is) pegou $oferta" >> "$JOBS/render-fila.log"

prompt="$(cat "$HOME/render-maquina/prompt.md")

PEDIDO: $dir/pedido.json
RESULTADO (escreva aqui): $dir/resultado.json"

cd "$SKILL_DIR" || { chamar "{\"acao\":\"erro\",\"oferta_id\":\"$oferta\",\"job\":\"$job\",\"erro\":\"pasta da skill não encontrada\"}" >/dev/null; exit 1; }
timeout 3h claude -p "$prompt" \
  --allowedTools "Bash Read Write Edit Glob Grep WebFetch" \
  --permission-mode acceptEdits \
  > "$dir/claude.log" 2>&1
codigo=$?

if [ -s "$dir/resultado.json" ] && python3 -c 'import json,sys;json.load(open(sys.argv[1]))' "$dir/resultado.json" 2>/dev/null; then
  corpo=$(python3 -c 'import json,sys;print(json.dumps({"acao":"devolver","oferta_id":sys.argv[2],"job":sys.argv[3],"resultado":json.load(open(sys.argv[1]))}))' "$dir/resultado.json" "$oferta" "$job")
  chamar "$corpo" >> "$JOBS/render-fila.log" 2>&1
  echo "$(date -Is) devolveu $oferta" >> "$JOBS/render-fila.log"
else
  corpo=$(tail -c 1500 "$dir/claude.log" | python3 -c 'import json,sys;print(json.dumps({"acao":"erro","oferta_id":sys.argv[1],"job":sys.argv[3],"erro":"saida "+sys.argv[2]+": "+sys.stdin.read()}))' "$oferta" "$codigo" "$job")
  chamar "$corpo" >> "$JOBS/render-fila.log" 2>&1
  echo "$(date -Is) erro $oferta (código $codigo)" >> "$JOBS/render-fila.log"
fi
