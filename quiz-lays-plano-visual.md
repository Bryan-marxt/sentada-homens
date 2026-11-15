# Quiz Desafio Pilates Sem Medo 50+ · plano visual (refazer)

Igor, 15/11: "o quiz ficou horroroso… quem construiu deve planejar primeiro, ter referências, planejar as imagens". A versão 1 (Inlead 147806) foi montada só com texto. Este é o plano antes de remontar.

## Referências estudadas (capturadas tela a tela, celular 390 px)
- **Pilates na Parede** (quiz.pilatespro.site, escala no nicho: 197 anúncios ativos, +117/semana).
- **Desafio 50+ da Lays Trancoso** (bio.laystrancoso.com, hoje página de vendas de Black Friday): foto de antes e depois no topo, depoimentos em cartão, mockup do produto, foto da professora, preço com faixa "ÚLTIMAS VAGAS".

O que faz a referência parecer profissional (e faltou no nosso):
1. **Imagem em toda tela.** A idade vem em cartões 2x2 com a foto de uma mulher de cada faixa. O tipo de corpo e a barriga vêm com uma miniatura à direita. As dores vêm com o corpo e um ponto vermelho no lugar. Pergunta sem foto ganha emoji grande na opção e uma figura embaixo.
2. **Uma cor de marca só**, usada na barra de progresso, nos destaques do título e no botão. Fundo branco, título preto e grosso, subtítulo cinza.
3. **Barra de progresso fina no topo** e seta de voltar.
4. **Título curto e grande** (até 3 linhas no celular), com a palavra forte na cor da marca.
5. **Telas de respiro entre as perguntas**: "você vai arrasar", explicando o método com uma foto. Elas quebram o ritmo e criam crença.
6. **Uma escolha só avança sozinha.** Múltipla escolha tem caixinha e botão "PRÓXIMO PASSO".
7. **Opção com borda arredondada e sombra leve**, e borda na cor da marca quando marcada.

## Tema do funil (Inlead)
- themeColor `#D9467A` (rosa forte; o nicho usa rosa e lilás), backgroundColor `#FFFFFF`, titleColor `#16121F`, contentColor `#5B5566`.
- Fonte do título `poppins` e do texto `inter`. rounded `rounded-2xl`, elementSize `56px`, container `max-w-[28rem]`, header.progress `default`.
- Logo: o nome do produto em texto até existir uma logo.

## Tela a tela (a copy aprovada continua; mudam o visual e duas telas de respiro)
| # | Tela | Componente e imagem |
|---|------|---------------------|
| 1 | Idade (título: "Secar a barriga da menopausa **sem forçar joelho e coluna**", "Qual sua idade?") | options em grade 2x2, cada cartão com foto (I1 a I4) |
| 2 | **Respiro novo**: "Feito para o corpo **depois dos 50**" | imagem I5 + checklist (deitada ou sentada · 15 minutos · sem pulo e sem impacto) + botão |
| 3 | Como está a sua barriga hoje? | options com miniatura à direita (I6 a I9, ilustração 3D do abdômen) |
| 4 | Diagnóstico (pode marcar mais de um) | options múltiplas com o corpo e o ponto vermelho (I10 a I13) + PRÓXIMO PASSO |
| 5 | O que ficou difícil sem dor? | options múltiplas com foto da ação (I14 a I17) + PRÓXIMO PASSO |
| 6 | Quantos cm de cintura primeiro? | options com emoji grande + imagem da fita métrica embaixo |
| 7 | Boa notícia (meta possível) | imagem I18 (deitada no tapete) + texto + checklist da linha do tempo dos 7 dias |
| 8 | O que acontece quando tenta caminhada ou academia? | options com emoji grande + figura I19 (mulher com a mão no joelho) |
| 9 | **Respiro novo**: "Você **não precisa** de academia nem de impacto" | arguments com 3 cartões e imagem (I18, I20 sentada, I21 tapete da sala) |
| 10 | Topa 15 minutos por dia, por 7 dias? | options com emoji + imagem I18 |
| 11 | Analisando suas respostas | loading com os itens que vão sendo marcados + imagem |
| 12 | Resultado: **Elástico Frouxo Abdominal** | ilustração I22 (o músculo frouxo e o firme) + texto personalizado com {{idade}} e {{barriga}} + botão |
| 13 | Prova | quotes com [DEPOIMENTO REAL AQUI] até existirem depoimentos reais; antes e depois (compare) só com aluna real |
| 14 | Mini VSL e oferta | vídeo + mockup do produto I23 + checklist dos entregáveis + cartão de preço (price) de R$ 97 por R$ 29,90 ou 6x de R$ 5,52 + chamada do Vale Compras + selo de 7 dias de garantia + FAQ + botão pulsando |

## Imagens (23)
Ilustrativas, com o mesmo estilo e a mesma paleta: mulher brasileira de 50 a 70 anos, roupa de ginástica lilás ou rosa, recorte com fundo branco. **Não entram:** antes e depois, depoimento, número ou rosto da fisioterapeuta. Esses só com material real.
- I1–I4: uma mulher por faixa (45-50, 51-60, 61-70, 70+), meio corpo, sorrindo.
- I5: três mulheres de 50+ sentadas no tapete.
- I6–I9: abdômen em ilustração 3D (estômago alto, pochete embaixo do umbigo, estufada, flácida caindo na calça).
- I10–I13: corpo de costas e de lado com ponto vermelho no joelho, na lombar e no quadril/ciático; corpo inteiro sem ponto.
- I14–I17: levantando da cadeira, descendo escada, abaixando para pegar algo, em pé cansada.
- I18: deitada no tapete da sala fazendo o exercício. I19: mão no joelho, cara de dor. I20: exercício sentada na cadeira. I21: tapete na sala.
- I22: ilustração 3D do músculo da barriga, frouxo e firme lado a lado.
- I23: mockup de celular e tablet com "Desafio Pilates Sem Medo 50+".

## Antes de entregar
Comparar cada tela lado a lado com a referência no celular e corrigir o que ficar pior.
