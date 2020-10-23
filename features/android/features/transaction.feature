# language: pt
Funcionalidade: Realizar fluxo de compra de produto
  Eu como usuário desejo realizar a compra de um produto na loja
  Para validar o fluxo de compra

  @transaction 
  Cenário: Adicionar um item ao carrinho e finalizar a compra
    Dado que estou na página Inicial da loja
    Quando eu adicionar um item ao carrinho
    E realizar o fluxo de compra
    Entao a compra deve ser finalizada