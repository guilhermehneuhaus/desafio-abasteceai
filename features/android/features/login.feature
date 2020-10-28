# language: pt
Funcionalidade: Realizar login na loja
  Eu como usuário desejo acessar realizar login na loja
  Para realizar compras com meus dados

  @login
  Esquema do Cenário: Realizar login no site da loja
    Dado que estou na página Inicial da loja
    Quando eu for direcionado para tela de login
    E preencher com o usuário "<user>" e a senha "<password>"
    Entao o login deve ou não ser feito "<loged>"

    Exemplos:
    | user                              | password | loged   |
    | guilherme.neuhaus@compasso.com.br | vivi1404 | Success |
    | guilherme.neuhaus@compasso.com.br | vivi1405 | Error   |