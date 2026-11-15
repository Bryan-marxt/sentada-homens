# Render automático na máquina da AWS (a cada 2 minutos)

Para o terminal que cuida da máquina de render. Não imprima o token em lugar nenhum.

1. Copie esta pasta (`render-maquina/`) do repositório sentada-homens, branch `claude/relaxed-rubin-oe6x72`, para `~/render-maquina` na máquina e dê permissão: `chmod +x ~/render-maquina/render-fila.sh`.
2. Crie `~/.render-fila.env` (com `chmod 600`) contendo:
   ```
   RENDER_URL=https://ahliaembcalfrpmauwpk.supabase.co/functions/v1/render-maquina
   RENDER_TOKEN=<valor>
   ```
   O valor está no Supabase (projeto ahliaembcalfrpmauwpk), tabela `app_config`, chave `render_maquina_token`. Leia pelo conector do Supabase e grave direto no arquivo, sem mostrar no chat.
3. Confira que `claude` roda sem perguntar nada na máquina (já logado) e que a skill está em `~/.claude/skills/criativos-sda`.
4. Agende: `crontab -e` e acrescente
   ```
   */2 * * * * /bin/bash -lc "$HOME/render-maquina/render-fila.sh" >/dev/null 2>&1
   ```
5. Teste sem pegar render: `curl -s -X POST "$RENDER_URL" -H "x-render-token: $RENDER_TOKEN" -H 'Content-Type: application/json' -d '{"acao":"teste"}'` (com o .env carregado) deve responder `acao deve ser pegar, devolver ou erro`.

O que acontece depois: a cada 2 minutos o script pergunta se há render. Se houver (hoje: Desafio 50+ da Lays, 30 vídeos), ele chama o Claude com a skill, sobe os vídeos e devolve o resultado. A Mel revisa e os cartões do Creative Lab andam sozinhos. Log em `~/render-jobs/render-fila.log`; cada render tem sua pasta em `~/render-jobs/`.
