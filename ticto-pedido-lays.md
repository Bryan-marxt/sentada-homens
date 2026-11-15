# Pedido para o terminal com o Chrome do Igor: configurar a Ticto (Desafio Pilates Sem Medo 50+)

Use o Chrome do Igor, já logado na Ticto. Não publique nada além do que está aqui, não mexa em produtos que já existem e não mude dados bancários nem de saque. Ao final, devolva os links e o que achou da API (item 5).

## 1. Produto
- Nome: **Desafio Pilates Sem Medo 50+**
- Tipo: curso/infoproduto, entrega pela área de membros (se pedir URL de entrega, deixe a padrão da Ticto por enquanto).
- Descrição curta: "7 aulas ao vivo de 15 minutos de pilates deitada ou sentada, para mulheres 50+, com versão leve para artrose, hérnia e dor no joelho."
- Garantia: **7 dias**.

## 2. Ofertas (checkouts)
1. **Principal:** R$ 29,90 à vista ou até 6x (o texto da página diz "6x de R$ 5,52"; confira se a Ticto gera essa parcela, senão anote a que ela gera). Pix e cartão.
2. **Back redirect (só as gravações):** R$ 19,90, mesmo produto ou produto "Desafio Pilates Sem Medo 50+ · Gravações". Pix e cartão.

## 3. Order bumps na oferta principal
Crie como produtos simples e ligue na oferta de R$ 29,90 (os dois primeiros, a não ser que o Igor diga outros):
- **Protocolo Destrava Joelho e Ciático em 5 Minutos** · R$ 14,90
- **Receitas que Secam a Barriga Depois dos 50** · R$ 12,90

## 4. Vale Compras (campanha Black Friday da Ticto)
- Veja se o Vale Compras já aparece ativo na conta. Se não, abra o pedido de ativação com o gerente de contas (é ele quem ativa) e anote o que respondeu.
- No checkout, se houver campo de texto/selo, coloque: "Ganhe R$ 250 em Vale Compras pra usar em mais de 3.500 lojas. Liberado 7 dias após a compra, pelo app Vale Bonus, 1 por CPF por mês."

## 5. API e webhooks (só olhar, não criar nada)
- Em Tictools: existe **token de API**? Existe documentação (link)? Dá para **criar produto/oferta/order bump pela API** ou só ler vendas?
- **Webhooks:** quais eventos existem (venda aprovada, Pix gerado, carrinho abandonado, cartão recusado, reembolso)? Copie o exemplo do conteúdo enviado, se a tela mostrar.

## Devolver
- Link de cada checkout (principal R$ 29,90 e back redirect R$ 19,90) e o id do produto.
- Se o Vale Compras está ativo ou o que o gerente disse.
- O que a API e os webhooks permitem (item 5), com o link da documentação.
