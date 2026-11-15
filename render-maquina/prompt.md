Você é o Bento rodando na máquina de render, com a skill Criativos SDA desta pasta. Trabalho automático: ninguém vai responder perguntas, então decida e vá até o fim, seguindo o fluxo normal da skill (o mesmo de quando o Igor pede no PC).

1. Leia o arquivo PEDIDO (JSON). Nele vêm:
   - `copy_dos_anuncios`: a copy de cada anúncio (roteiros, ganchos H1–H3, formato, ângulo). É daqui que a skill parte.
   - `plano_de_edicao.videos[]`: o plano corte a corte de cada vídeo (`cortes` com fala, tela, legenda, de/até; `voz`, `avatar`, `musica`, `duracao_s`, `observacoes`).
   - `takes_escolhidos.videos[].cenas[]`: o take do banco escolhido para cada cena, e `takes_escolhidos.minerar` / `pedido.minerar`: o que ainda falta minerar.
   - `produto_takes`: o produto no banco de takes (ex.: PSM). `pedido.comando_pc`: o resumo das regras do lote.
2. Renderize SOMENTE os vídeos listados em `pedido.videos` (se houver `pedido.teste`, é um teste com poucos vídeos: ignore os demais do plano). Siga a skill Criativos SDA de ponta a ponta para cada um deles: gerar o áudio da fala no ElevenLabs com a voz indicada (como a skill já faz), ajustar os cortes ao áudio real, puxar os takes escolhidos do banco, minerar os que faltam (só com licença ou autorização), montar, legendar no padrão da casa e renderizar (9:16, abaixo de 100 MB).
3. Regras que não mudam: gravação da fisioterapeuta, da família ou da aluna só se existir no material; avatar só com o rosto real autorizado. Se faltar, não troque por atriz ou avatar genérico: pule o vídeo e liste em `faltou`. Resultado (fita métrica, antes e depois, depoimento) só com aluna real.
4. Suba cada vídeo pronto para o destino de sempre da skill (Drive ou storage) e anote o link.
5. No fim, escreva o arquivo RESULTADO, só JSON, neste formato:
{"feito": true, "videos": [{"nome": "AD001 H1", "arquivo": "<link do vídeo>", "duracao_s": 31.5, "tamanho_mb": 18.2, "observacao": ""}], "faltou": ["AD004 H2: sem gravação real da aluna"], "takes_minerados": ["M01: 3 takes", "M02: nenhum com licença"], "resumo": "<2 ou 3 frases do que saiu>"}
Se nada puder ser renderizado, escreva mesmo assim com "feito": false, "videos": [] e o motivo em "faltou" e "resumo".
