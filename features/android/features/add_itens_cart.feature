# language: pt
Funcionalidade: Adicionar itens ao carrinho
  Eu como usuário desejo acessar a tela inicial da loja
  Para realizar compras

  @add_product_cart 
  Cenário: Adicionar um item ao carrinho
    Dado que estou na página Inicial da loja
    Quando eu adicionar um item ao carrinho
    E for direcionado ao carrinho
    Entao o item deve ter sido adicionado