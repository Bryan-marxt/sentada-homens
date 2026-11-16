# Regras do Igor (valem em toda sessão)

## Produto/oferta só se faz pela esteira de Ofertas (Igor, 16/11)
"Sempre que eu te passar um produto, uma ideia, e a gente puser a mão na massa, todas as etapas lá de Ofertas têm que
ser preenchidas. Produto só pode ser feito se seguir as etapas."

- Todo produto, oferta ou ideia que vira trabalho entra PRIMEIRO na esteira de Ofertas do tgtracker
  (`esteira_ofertas` + `lab_ofertas`, Supabase `ahliaembcalfrpmauwpk`) e passa por TODAS as etapas da tela, na ordem:
  Análise (anúncios, funil, mecanismo, checkout) → Modelar (comparativo, comentários/voz do público, ângulos,
  benchmark) → Escrita (esteira de valor, oferta, copy) → No ar (funil/página/fluxo, entregável) → Produção
  (takes, edição, render, revisão).
- Nada de produzir criativo, página, fluxo ou entregável "por fora" antes da etapa correspondente ficar pronta. A
  etapa de produção usa a copy e a oferta aprovadas nas etapas anteriores, nunca um brief paralelo.
- Se algo travar (robô, fila, limite), destrave a esteira (máquina 24h, fila de IA) em vez de pular etapa.
- Se, por urgência, algo for feito fora da esteira, grave o resultado na etapa correspondente da oferta (para a tela
  mostrar) e alinhe com o que a esteira produzir depois. Isso é exceção, não caminho.
- O que a tela mostra é a verdade: oferta "pronta" = todas as etapas preenchidas e revisadas.
- Produto novo também nasce no Creative Lab (Igor, 16/11: "não criou o produto em creative lab também"): uma linha em
  `lab_produtos` (código de 3 letras, nome, cor, as 10 abas "<COD> Briefing… <COD> Takes", pasta no Drive "<COD>-BR -
  ANÚNCIOS" ao lado das outras) para cada usuário que tem os outros produtos, e `etapas.producao.produto_takes` da oferta
  apontando para esse código.
