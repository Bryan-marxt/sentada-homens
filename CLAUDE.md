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

## Criativos: formato misto, coisa real é real, copy modelada do mesmo nicho (Igor, 17/11)
Lição da leva 2 do Sobrevivente, reprovada: "fez todos em animação, tudo imagem de IA, até os galões de água… isso tem
que ser coisa real… a copy também não ficou boa… a gente tá usando a inteligência da dissecação?"

- Formatos mistos: dos 10 vídeos, no máximo 2 ou 3 em animação, e só quando a ficha do formato pedir. "Prioridade para
  animação" quer dizer incluir algumas, não fazer todas.
- O que a copy fala de concreto (água, galão, feijão, despensa, luz apagando, mercado) aparece REAL: take filmado ou
  minerado (banco/Creative Lab), literal da fala. Imagem de IA só para persona/UGC encenado ou cena impossível de filmar.
- Cada vídeo segue o formato da ficha aprovada na etapa Criativos (b-roll real, mãos, UGC, tela do app, podcast, 3D).
  Faltou crédito ou take: pare e avise; nunca converta tudo para animação por conta própria.
- Copy: modelar gancho, estrutura e CTA de anúncios VALIDADOS DO MESMO NICHO (dias no ar, cópias ativas), lidos na base
  de dissecação da Spy Library desse nicho, de várias ofertas. Nunca estrutura de outro nicho (nutrição/fitness para
  sobrevivência). Nada genérico tipo "são 150 projetos, toca em Saiba mais".
- O render usa a copy aprovada literal: não reescrever gancho nem cortar fora da esteira. Revisão com nota abaixo de 8
  não vai para produção.
- Nome do produto: comparar com os nomes das ofertas que escalam no nicho e trazer 3 a 5 opções para o Igor escolher.
- As mesmas regras estão gravadas para os agentes (`ofertas_time_eventos` tipo `pedido_do_dono` nos cargos criativos,
  copy, estrategia, edicao, takes) e na máquina de render (`app_config.render_maquina_prompt`, "REGRA DO DONO 17/11").
