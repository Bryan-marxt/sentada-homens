# Avaliação dos anúncios do Desafio Pilates Sem Medo 50+ contra a Lays Trancoso e o benchmark

Data: 15/11/2026 · Oferta interna: esteira_ofertas 074c685e-a538-47a6-abc7-e171910e8dd5 · Concorrente modelado: Lays Sant'anna/Trancoso, "Desafio 50+" (page_id 2016271568674266)

## Notas (0 a 10)

Peso de cada critério: gancho 20%, takes 20%, formato 12,5%, prova 12,5%, promessa 10%, edição 10%, CTA 7,5%, técnica 7,5%.

| Anúncio | Gancho | Formato | Promessa | Prova | Takes | Edição | CTA | Técnica | **Final** | As 2 notas mais baixas |
|---|---|---|---|---|---|---|---|---|---|---|
| **Nosso AD001 H1** (mãe 58 anos) | 3 | 2 | 6 | 2 | 3 | 4 | 4 | 5 | **3,4** | formato 2 · prova 2 |
| **Nosso AD002 H1** (ex no supermercado) | 4 | 2 | 6 | 3 | 3 | 4 | 4 | 5 | **3,7** | formato 2 · prova/takes 3 |
| **Nosso AD003 H1** (pulos e caminhadas) | 4 | 2 | 6,5 | 1,5 | 3 | 4,5 | 4,5 | 5 | **3,6** | prova 1,5 · formato 2 |
| **Nosso AD004 H1** (diário "Lúcia, 57") | 3,5 | 3 | 6 | 1 | 3 | 3,5 | 4 | 5 | **3,4** | prova 1 · formato/takes 3 |
| **Nosso AD005 H1** (caixinha de pergunta) | 5 | 3 | 6,5 | 3 | 3 | 4 | 4,5 | 4 | **4,0** | formato/prova/takes 3 |
| Lays #2 filha filma a mãe (1588194246649691) | 8,5 | 10 | 8 | 8 | 8,5 | 7,5 | 8 | 6,5 | **8,3** | técnica 6,5 · edição 7,5 |
| Lays #3 diário da Márcia (1092224463257939) | 8,5 | 10 | 8 | 8,5 | 8,5 | 7 | 8 | 6,5 | **8,3** | técnica 6,5 · edição 7 |
| Lays #5 marido filma a esposa (4539525866284083) | 7,5 | 9,5 | 8 | 7,5 | 8 | 6,5 | 8 | 6,5 | **7,8** | edição 6,5 · técnica 6,5 |
| Lays #1 novela 3D do supermercado (1064616289766923) | 8 | 9 | 7 | 5 | 8 | 8 | 7 | 7,5 | **7,5** | prova 5 · promessa/CTA 7 |
| Lays #7 palco/entrevista (1013680577748916) | 7,5 | 8,5 | 8 | 7,5 | 7,5 | 6 | 8 | 7 | **7,5** | edição 6 · gancho/takes 7,5 |
| Lays #6 demonstração bastão e cadeira (850488061468645) | 6,5 | 8 | 7 | 7 | 7,5 | 6 | 7,5 | 7 | **7,1** | edição 6 · gancho 6,5 |
| Desincha Barriga (Andressa) top 1, demonstração + selos | 7,5 | 8 | 8 | 7,5 | 8 | 7,5 | 8,5 | 8 | **7,8** | gancho 7,5 · prova 7,5 |
| Desincha Barriga (Andressa) top 8, caixinha de pergunta | 7,5 | 8,5 | 7,5 | 8 | 7,5 | 6,5 | 8 | 7,5 | **7,6** | edição 6,5 · gancho/takes 7,5 |
| Jejum Sem Fome (Talita) top 3, "sim ou não" | 7 | 7,5 | 7 | 8 | 7,5 | 7 | 6,5 | 7,5 | **7,3** | CTA 6,5 · gancho 7 |
| Pilates na Parede · Murcha Barriga | sem vídeo no banco (só o texto do anúncio ou o sintoma do gancho): não pontuados | | | | | | | | — | — |

Média dos nossos: **3,6**. Média dos da Lays: **7,8**. Diferença de 4,2 pontos. Cerca de 80% dela vem de quatro critérios (takes, formato, gancho e prova), e os quatro têm a mesma causa: nos nossos não aparece nenhuma pessoa real falando.

### O que eu vi de verdade
- **Nossos 5 vídeos**: baixei os arquivos (1080x1920, 30 fps, 58 a 74 s), extraí quadros em 0,5 s, 1,5 s, 3 s e depois a cada 3 s, contei os cortes com ffmpeg (detecção de cena), medi o áudio e **transcrevi o áudio** com Whisper local. As falas citadas abaixo saíram da transcrição.
- **Lays**: baixei do bucket creative-lab os vídeos #1, #2, #3, #4, #5, #6, #7 e #10. Vi os quadros de #1, #2, #3, #5, #6 e #7. Também usei as transcrições (#1, #2 e #3) e a dissecação de etapas.anuncios e de lab_ofertas.top_ads (cortes, plano médio, faixa de impressões). O #4 e o #10 eu avaliei só pelos números de edição, sem ver os quadros, e por isso ficaram sem nota.
- **Benchmark**: vi os quadros dos vídeos do Desincha Barriga (Andressa, top 1 e top 8) e do Jejum Sem Fome (Talita, top 3 e top 4), que estão no bucket e na base formatos-do-mercado.md. Do Pilates na Parede e do Murcha Barriga só existe texto no banco (material_nicho voltou vazio), então ficaram sem nota.
- **Banco**: li a copy (criativos), o plano de takes e de edição (arquivo_producao_v2), o registro do render, a mineração e lab_takes_minerados (8 takes do PSM).

---

## Diagnóstico em uma frase

A copy e a estrutura estão certas (modelaram a Lays corte a corte), mas **o render trocou todos os ativos que vendem (a expert falando, a filha ou o marido filmando, a aluna real) por 8 takes de criadores estrangeiros com voz sintética por cima**. Os 5 anúncios viraram o mesmo formato, "narração + b-roll de banco", que não é o formato que escala nesse nicho. Para piorar, a edição usa esse b-roll no ritmo de um talking head.

O plano de edição dizia isso com todas as letras ("Gravação real da família; não vem de banco", "Família e aluna, só gravação real, nunca avatar nem atriz"), e o o_que_evitar proibia nomes e idades inventados. O render foi em frente mesmo assim: preencheu "[IDADE REAL]" com "58 anos" e "[NOME REAL]" com "Lúcia, 57".

---

## Detalhe por anúncio (nossos)

Observações que valem para os 5:
- Os mesmos 8 takes aparecem em todos: instrutora de ~45 anos com toalha num estúdio de balé (TK de @vane_personal ou @lananifitness), mulher de lilás na parede, mulher de roxo fazendo afundo e falando para a câmera, loira com bola e almofada, mulher de azul sentada com elástico amarelo, ponte com fundo azul, mulher de verde na cama e uma aula de idosos de 75 anos ou mais, com homens, numa sala dos EUA (@getgrandmastrong).
- Os takes vieram de vídeos de baixa resolução e foram ampliados para 1080 p. Dá para ver o borrão no quadro de 0,2 s do AD001.
- O áudio é só a voz sintética, sem trilha. Há silêncio abaixo de -45 dB entre as frases (12 vezes no AD001) e o volume médio é baixo (cerca de -27 dB RMS).
- A legenda copia a da Lays (caixa alta, 2 a 3 palavras, palavra-chave em amarelo, centro-baixo), o que está certo. A cartela cinza de topo ("ELÁSTICO FROUXO", "DIA 1 · DIA 3 · DIA 7") ajuda, mas fica parada por 6 a 12 s.
- Cortes medidos: entre 9 e 14 por vídeo, um a cada 5 a 6 s. A Lays corta até menos (um a cada 8 a 13 s), só que o plano longo dela é **uma pessoa falando para a câmera com a boca sincronizada**. Um plano longo de b-roll mudo, sem rosto, perde a pessoa.

**AD001 H1 (3,4)**: o formato planejado era UGC de terceiro real (filha filma a mãe) emendado na expert. Entregue: b-roll com narração.
- 0 a 6 s: a instrutora de ~45 anos com toalha num estúdio de balé, enquanto a voz diz "A minha mãe tem 58 anos… deitada no tapete da sala". Não tem filha, não tem sala, não tem caixa de texto, só a legenda "A MINHA MÃE". O "58 anos" é inventado, e o o_que_evitar proíbe isso.
- 24 a 27 s: "Turma do Desafio" em cima da aula de idosos nos EUA, com homens e 75 anos ou mais. É público errado e prova falsa.
- Take repetido dentro do próprio anúncio: a toalha em 0–6 s e 30–36 s, a parede em 9–12 s e 39–42 s.
- CTA (63–66 s): cartela "CLIQUE EM SAIBA MAIS" sobre a mulher de verde deitada de costas na cama. Ninguém aponta, não há seta nem botão.

**AD002 H1 (3,7)**: o formato planejado era a novela 3D (o anúncio #1 da Lays, o maior, acima de 3 milhões). Entregue: b-roll.
- 0 a 9 s: a mulher de roxo fazendo afundo e mexendo a boca, falando outra coisa, enquanto a narração conta o encontro com o ex no supermercado. A cartela "NA FILA DO SUPERMERCADO" é a única âncora. O olho vê a boca fora de sincronia e não acredita.
- 24–30 s e 45–51 s: aula de idosos com "ELÁSTICO FROUXO" e "As amigas começaram…". 51–57 s: instrutora jovem com "SEQUÊNCIA DO TÔNUS DO BERÇO".
- O ângulo de humilhação social, que é o mais forte da Lays, perde toda a força sem a cena.

**AD003 H1 (3,6)**: o formato planejado era o talking head da expert derrubando o mito. Entregue: b-roll.
- 0–6 s: a mulher de roxo fazendo afundo (exercício de impacto) e mexendo a boca, sem caixa de texto até 9 s, enquanto a voz pergunta "Quantos pulos e caminhadas…".
- 51–61 s: "Eu tinha pavor de exercício… hoje eu levanto da cadeira sem apoiar as mãos" com a cartela **"ALUNA DO DESAFIO"** sobre take de terceira. É depoimento fabricado, o item mais grave do lote: risco de reprovação na Meta e de reclamação.
- A copy é a mais clara dos 5 (mito, causa hormonal, saída).

**AD004 H1 (3,4)**: é o mais parecido com a estrutura da Lays (pílula "DIA 1" no topo), mas sem aluna real.
- 0–9 s: a loira com bola, "Meu nome é Lúcia, tenho 57 anos". Nome, idade e depoimento inventados.
- 9 s: entra "DIA 7" **no mesmo take e na mesma cena, sem mudança nenhuma no corpo**. O antes e depois fica falso e não convence.
- O primeiro corte só vem em 20,3 s: 20 s de um take só, sem rosto falando.

**AD005 H1 (4,0)**: o melhor gancho do lote, mas sem o entrevistador e sem a expert.
- 0–3 s: a caixinha "Faça uma pergunta" do Instagram ("Pra quem nunca fez exercício e tem dor, por onde começa?"). É um gancho validado (Andressa top 8, 216 dias), mas fica sobre a mulher de lilás na parede e ninguém responde para a câmera.
- 15–24 s: a mulher de roxo "falando" fora de sincronia.
- **50,97–51,05 s: aparece texto queimado de outro anúncio ("exercícios … sem sofrimento", magenta) no topo do take da cama.** O take minerado não foi limpo.
- O fecho repetindo a promessa ("7 dias, 15 minutos por dia, começando deitada") é bom.

## Detalhe dos concorrentes

- **Lays #2 e #3 (8,3)**: em 0 s, um rosto olhando para a câmera e falando com a boca sincronizada, a mulher do público (55 a 65 anos, acima do peso, numa sala brasileira) e a pílula "DIA 01". Entre 8 e 14 s, "DIA 49/59" no mesmo enquadramento com o corpo mudado, e um flash de ~0,4 s para a expert. De 15 a 88 s entra o miolo fixo: a Lays em selfie com o abdômen à mostra (a prova viva da promessa), legenda amarela, fotos de alunas com ela recortada no canto e rosto de terceiros coberto por emoji, e CTA com as mãos apontando, repetido 3 vezes. Pontos fracos: técnica caseira de propósito (540x960) e poucos cortes. Observação: o hook do #2 tem cara de encenado (talvez gerado); não dá para afirmar.
- **Lays #5 (7,8)**: o marido em selfie com a esposa treinando atrás e "dia 01 → dia 56". O primeiro corte só aos 15,6 s funciona porque ele fala para a câmera. Daí em diante, o mesmo miolo.
- **Lays #1 (7,5)**: novela 3D estilo Pixar com 19 cenas, e cada frase tem a sua cena (supermercado, espelho, médico com infográfico, brilho na cintura). É o maior da página (acima de 3 milhões, no ar desde 18/09). Ponto fraco: a prova é dramatização e as promessas são agressivas ("qualquer patologia", "5 kg em uma semana"), coisa que não devemos copiar.
- **Lays #7 (7,5)**: palco com microfone e manchete de 3 linhas ("SEDENTÁRIA APÓS OS 50 faça isso…"). A pergunta vem de uma mulher do público e quem responde é a expert de corpo atlético. Só 4 cortes em 88 s.
- **Lays #6 (7,1)**: professora demonstrando com cabo de vassoura e cadeira, plano aberto fixo e prova no celular na mão ("a Claudete…").
- **Andressa top 1 e top 8 (7,8 e 7,6)**: a expert faz o exercício com o adesivo "EXERCÍCIO OBRIGATÓRIO…" ou lê a caixinha no celular. A prova aparece no celular com selo "-25Kg". Selos pulando ("3 DIAS" → "1 SEMANA" → "5 kilos"), botão roxo "CLIQUE EM SAIBA MAIS" desenhado e cartão final.
- **Talita top 3 (7,3)**: "JEJUM INTERMITENTE SIM OU NÃO" com ela servindo água no shopping, selfie andando, jump cut a cada 5 a 6 s e dois depoimentos em vídeo ("-4kg").

O que se repete em todos os concorrentes: **uma pessoa real fala para a câmera em mais de 70% do tempo e a prova é real (ou dramatização assumida, no caso do 3D)**.

---

## As 10 maiores diferenças, em ordem de impacto

1. **Não aparece nenhuma pessoa real falando.** Nos deles a expert, a filha, o marido ou a aluna falam para a câmera com a boca sincronizada. Nos nossos é voz sintética sobre b-roll mudo, e quando aparece alguém mexendo a boca (AD002 0–9 s, AD003 0–6 s, AD005 15–24 s) a fala não bate com a boca.
2. **Falta o miolo da expert.** A Lays reaproveita os mesmos 60 a 70 s de talking head (15–88 s) em todos os vídeos; o corpo dela é a prova da promessa. Nós não temos a nossa expert gravada, e esse é o ativo que mais vende.
3. **A prova é inventada, não real.** Deles: "dia 01 → dia 49" no mesmo cenário, fotos de alunas com emoji, print no celular. Nossos: "58 anos" (AD001), "Lúcia, 57" (AD004), "ALUNA DO DESAFIO" (AD003), "DIA 7" no mesmo take do dia 1 (AD004). Além de não convencer, fere o o_que_evitar e arrisca a conta de anúncios.
4. **O público na tela é errado.** Deles: mulheres de 55 a 65 anos, brasileiras, acima do peso, em casa. Nossos: instrutora de ~45 em estúdio, idosos de 75 anos ou mais com homens num centro dos EUA e mulher fazendo afundo (impacto), o contrário de "deitada, sem impacto".
5. **O gancho visual de 0 a 3 s é fraco.** Deles: rosto mais selo "DIA 01", ou manchete em caixa, ou cena de novela. Nossos abrem em b-roll só com a legenda pequena; o AD001 e o AD003 não têm caixa de texto até 9 s.
6. **O formato planejado não é o entregue.** Os 5 foram desenhados nos formatos que escalam (terceiro real, 3D, talking head, diário, entrevista) e viraram o mesmo "narração + b-roll", que no mercado só funciona com um corte a cada ~1,1 s e imagem casada com a frase (Mariane, top 1).
7. **O ritmo não serve ao formato.** Planos de 5 a 20 s de b-roll sem rosto (AD004 0–20 s em um take só; AD002 0–9 s). Plano longo só segura quando há alguém falando.
8. **Faltam takes, e os poucos se repetem.** São 8 takes para 5 anúncios, repetidos dentro do mesmo vídeo (AD001: toalha em 0 e 30 s, parede em 9 e 39 s). Cada hook novo da Lays tem gravação nova.
9. **Fala e imagem não casam.** "Tapete da sala" sobre um estúdio, "turma do desafio" sobre idosos americanos, "sem abdominal" sobre ponte, "elástico frouxo" sobre mulher na parede. Na Lays, cada frase de mecanismo tem o exercício na tela ou as setas de luz no corpo.
10. **CTA, áudio e acabamento.** Deles: as duas mãos apontando para baixo, botão desenhado, CTA no meio e no fim, "nova turma na segunda". Nossos: uma cartela cinza só no fim, sobre a mulher deitada de costas. Somam-se o volume baixo com silêncios, as fontes ampliadas e borradas e o texto queimado de terceiro no AD005 em 51 s.

---

## Plano de melhoria

### a) Estudo: regras novas (uma linha cada)

**Ana (criativos)**
1. Não aprovar um gancho com [NOME/IDADE/DEPOIMENTO REAL] sem o arquivo da pessoa real já gravado; se não houver, troque o ângulo.
2. Formato só entra no lote se o ativo existe (expert gravada, aluna, familiar, 3D gerado); senão, escreva para "narração + b-roll".
3. Em narração + b-roll, cada frase de até 2 s precisa de uma imagem filmável escrita ao lado ("frase → o que aparece").
4. Todo gancho tem duas camadas: manchete em caixa (0–3 s) e ação visual de uma mulher 50+ (nunca só legenda).
5. "Aluna", "minha mãe", "meu nome é" só com gente real; sem ela, terceira pessoa ("muitas mulheres…").
6. Prioridade do lote: 1º miolo da expert, 2º hooks UGC reais, 3º novela 3D, 4º b-roll; não inverter.
7. Um mesmo miolo de 60 s para todos os hooks (modular como a Lays); o teste é só nos 15 s iniciais.

**Bento (edição)**
1. Plano longo (8 a 12 s) só com pessoa falando sincronizada; b-roll sem rosto troca a cada 1 a 2 s, no máximo 3 s.
2. Nunca usar take em que a pessoa mexe a boca com outra fala.
3. A imagem casa com a palavra dita: "sala" mostra sala, "deitada" mostra deitada, "turma" mostra mulheres 50+.
4. O mesmo take não aparece duas vezes no mesmo vídeo.
5. Manchete em caixa branca de 0 a 3 s, mais a legenda em caixa alta com uma palavra-chave amarela.
6. Selo "DIA 01 → DIA X" só com a mesma pessoa real em dois dias diferentes e o corpo mudado.
7. CTA com seta ou botão animado e alguém apontando ou clicando, no meio (~60%) e nos últimos 5 s.
8. Antes de entregar, assista sem som: se não dá para entender a promessa, refaça.

**Kauã (takes)**
1. Só mulher com idade aparente de 50 a 68 anos; nada de homem, idoso de 75 ou mais, criança ou instrutora jovem e atlética (a não ser a expert).
2. Só casa (sala, quarto, tapete); nada de academia ou estúdio quando a fala diz "em casa".
3. Nada de impacto (pulo, afundo, corrida), a não ser no take do "jeito errado" e com essa etiqueta.
4. Resolução nativa de 720 p ou mais, sem texto queimado nem marca d'água: confira o primeiro e o último quadro.
5. Etiqueta obrigatória em cada take: cena (gancho, meio, prova ou CTA), a frase que ele ilustra e a duração útil (3 s ou mais).
6. Registrar a licença ou autorização do dono; sem ela, o take é só referência e não vai para o render.
7. Take de prova (fita, depoimento, dia 7) só da aluna real nossa; nunca minerado.

### b) Takes que precisam existir no banco do PSM (meta 50+)

Origem: **G** = gravar (gente nossa e real), **M** = minerar (com licença), **3D** = gerar ilustração ou animação. A mineração de takes de terceiros resolve no máximo o b-roll do "meio"; o que vende (gancho e prova) precisa ser **gravado**.

| # | O que mostra | Duração útil | Para qual cena ou gancho | Origem | Qtd mín. |
|---|---|---|---|---|---|
| 1 | **Expert em selfie andando pela sala, falando o miolo inteiro** (oferta, mecanismo, linha do tempo, CTA) | 60–70 s | miolo de todos os ADs | G | 2 versões (2 roupas ou cenários) |
| 2 | Expert apontando as duas mãos para baixo, "clique em Saiba Mais" | 3 s | CTA meio e fim | G | 2 |
| 3 | Expert deitada no tapete fazendo o Tônus do Berço e falando | 8–10 s | AD003, AD005, AD006 | G | 2 |
| 4 | Expert segurando o celular com a prova (print ou foto de aluna real) | 4–6 s | bloco de prova | G | 2 |
| 5 | Filha/filho em selfie com a mãe 55+ no tapete ao fundo, dia 01 e dia X | 6–8 s cada | AD001 H1/H3 | G (família real) | 2 pares |
| 6 | Marido em selfie com a esposa treinando atrás, dia 01 e dia X | 6–8 s | AD001 H2 | G | 1 par |
| 7 | Aluna em selfie no espelho da sala mostrando a barriga, nome e idade, dia 01 e dia 7 | 6–8 s | AD004 | G (aluna real) | 2 pares |
| 8 | Entrevista: duas cadeiras, microfone, mulher 55+ pergunta e a expert responde | 6–10 s | AD005 | G | 1 |
| 9 | Mão segurando o celular com a caixinha "Faça uma pergunta" | 3 s | AD005 H2/H3 | G | 1 |
| 10 | Mulher 55+ levantando do sofá ou do chão com a mão na lombar ou no joelho (dor) | 3 s | gancho de dor (AD003, AD005) | M | 3 |
| 11 | Mulher 55+ caminhando ou na esteira e parando com a mão no joelho | 3 s | AD003 H1 "pulos e caminhadas" (M05/M06) | M | 2 |
| 12 | Mulher 55+ fazendo polichinelo ou pulo com cara de dor ("jeito errado") | 2–3 s | AD003 mito | M | 2 |
| 13 | Mulher 55+ deitando devagar no tapete da sala | 3 s | "começa deitada" (AD004, AD005) | M | 3 |
| 14 | Desenrolando o tapete na sala | 2 s | AD010 H3 (M12) | G/M | 2 |
| 15 | Mão na barriga estufada no fim do dia, sentada no sofá | 2–3 s | AD007 (sintoma do Murcha Barriga) | M | 2 |
| 16 | Mulher 55+ ajustando a calça apertada no espelho | 3 s | confissão e espelho (AD002, AD004) | M | 2 |
| 17 | **Recolher o umbigo deitada** (transverso), close lateral do abdômen | 3–5 s | Sequência do Tônus do Berço (M02) | M | 4 (ângulos diferentes) |
| 18 | **Joelhos ao peito, balanço suave tipo berço** | 3 s | o nome do mecanismo, literal | M | 3 |
| 19 | Ponte de glúteo baixa no tapete | 3 s | AD010 e lombar (M03) | M | 3 |
| 20 | Pernas em mesa (tabletop), respiração com as mãos na barriga | 3 s | meio (M04) | M | 3 |
| 21 | Alongamento lombar deitada (joelhos caindo para o lado) | 3 s | "a lombar alivia" | M | 2 |
| 22 | Versão sentada na cadeira (para quem não deita) | 3 s | "versão mais leve" | M | 2 |
| 23 | Mulher 55+ seguindo a aula no celular ou no notebook no chão da sala | 4 s | "aula em casa, 15 min" | M/G | 3 |
| 24 | Tela do celular com a aula do nosso desafio rodando | 3 s | oferta | G | 1 |
| 25 | Elástico de calça velho esticado que não volta, mais um novo que volta | 2 s cada | Elástico Frouxo (M10) | G | 2 |
| 26 | Ilustração 3D do abdômen firme x frouxo, cintura 7h x 19h | 3–4 s | mecanismo (AD007, M08) | 3D | 2 |
| 27 | Cenas 3D da novela do ex no supermercado (personagem fixa de 55 anos) | 12–20 cenas | AD002 H1/H2 (Lays #1/#4) | 3D | 1 roteiro |
| 28 | Aluna real levantando da cadeira sem as mãos | 3 s | "teste da cadeira" (AD003) | G | 2 |
| 29 | Fita métrica na cintura da aluna real, dia 1 e dia 7 | 3 s | prova (M11) | G | 1 par |
| 30 | Print real de WhatsApp de aluna no celular na mão | 3 s | prova | G | 3 |
| 31 | Mulher 55+ subindo escada leve, dançando na cozinha (energia) | 2–3 s | "no dia 1 mais energia" | M | 3 |
| 32 | Grupo de mulheres BR de 50 a 65 anos em chamada de vídeo ou turma online (troca a aula de idosos dos EUA) | 3–4 s | "nova turma" | G/M | 2 |
| 33 | Calendário de mesa circulando a segunda-feira | 2 s | "nova turma na segunda" (M16) | G | 1 |
| 34 | Mão de mulher 55+ tocando "Saiba mais" no celular | 2 s | CTA | G | 2 |

Total mínimo: cerca de 75 takes (cerca de 45 minerados e cerca de 30 gravados ou gerados). Os 8 takes atuais: tirar a aula de idosos (TK 006 e TK 008) e a mulher do afundo (fala dessincronizada e impacto); a instrutora da toalha só vale como "meio", nunca com "mãe" ou "sala".

### c) Regras para a máquina de render

1. **Bloqueio de ativo**: se o corte pede gravação real (expert, aluna, família, entrevista) e o arquivo não existe, o vídeo não renderiza e volta como "falta gravação X". A máquina nunca troca por take de banco.
2. **Bloqueio de prova**: se a fala tiver "meu nome é", "minha mãe/esposa", "aluna", idade, ou se ainda restar colchete [ … ] na copy, só renderiza com o take da própria pessoa. Nunca preencher colchete.
3. **Voz**: depoimento em primeira pessoa só com voz real. A voz sintética fica só para narradora ou expert com autorização. Uma voz por personagem.
4. **Boca**: rejeitar take em que a pessoa fala para a câmera se o áudio não for dela (sem lip sync aprovado).
5. **Ritmo**: b-roll sem rosto com plano máximo de 2,5 s e primeiro corte em até 1,5 s; talking head com jump cut a cada 5 a 8 s; pelo menos (duração ÷ 2,5) takes distintos no b-roll.
6. **Sem repetição**: o mesmo take (ou trecho do mesmo arquivo) só uma vez por vídeo.
7. **Abertura**: manchete em caixa branca, texto preto, 2 linhas, de 0 a 3 s, mais a legenda. Selo "DIA 01" só com a pessoa real.
8. **Legenda**: caixa alta, 2 a 4 palavras, palavra-chave amarela, contorno, no centro-baixo acima da zona do botão do Reels (fora dos 20% de baixo). A cartela de topo não fica mais de 6 s.
9. **CTA**: botão ou seta animada "SAIBA MAIS" nos últimos 5 s sobre alguém apontando ou clicando, mais um CTA intermediário em cerca de 60% do vídeo. Proibido fechar sobre take de costas ou sem rosto.
10. **Áudio**: normalizar em -14 LUFS (pico -1 dBTP), cortar silêncios acima de 0,3 s, trilha contínua bem baixa (8 a 12%) para não deixar buraco.
11. **Fonte**: take abaixo de 720 p nativo não entra; nada de ampliar 480 p.
12. **Limpeza**: fazer OCR nos primeiros e últimos 0,5 s de cada take. Se houver texto ou marca d'água de terceiro, aparar ou descartar (é o que vazou no AD005 em 51 s).
13. **Checagem final automática** antes do upload: cortes, plano médio, repetição de take, loudness, OCR e duração. Fora da regra, o vídeo é reprovado com o motivo, e não vai para o Drive como pronto.
14. **Formato**: 1080x1920 e 30 fps, que já está certo; manter.

---

## Fontes no banco usadas
- esteira_ofertas.etapas: criativos.resultado (copy e formatos), revisao_criativos, arquivo_producao_v2.takes e .edicao (plano corte a corte), render, mineracao, takes, anuncios.resultado, revisao_anuncios, material_anuncios.transcricoes, nicho.resultado, material_nicho, material_pedido_nicho.
- lab_ofertas 8f75a928-… (Lays): top_ads (cortes, plano médio, faixa), edicao, padrao, videos.
- lab_takes_minerados produto='PSM': TK 001–008 (todos do TikTok, de @vane_personal, @lananifitness, @successfulagingfitness, @menopausa_ativa, @getgrandmastrong e @larissadopradobona, sem licença registrada).
- /home/user/criativos-sda/references/base/formatos-do-mercado.md e hooks-visuais.md.
- Arquivos de trabalho (quadros, folhas de contato, transcrição): /tmp/claude-0/-home-user-sentada-homens/576fcd55-edeb-5245-af9c-546c1fb13d83/scratchpad/aval/, …/lays/ e …/bench/.
