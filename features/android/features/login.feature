# language: pt
Funcionalidade: Realizar login na loja
  Eu como usuário desejo acessar realizar login na loja
  Para realizar compras com meus dados

  @login
  Cenário: Realizar login no site da loja
    Dado que estou na página Inicial da loja
    Quando eu for direcionado para tela de login
    E preencher com o usuário "guilherme.neuhaus@compasso.com.br" e a senha "vivi1404"
    Entao devo ter feito o login com sucesso
