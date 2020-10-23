Dado('que estou na página Inicial da loja') do
  @home = HomeScreen.new
  @home.homepage
end

Quando('realizar uma pesquisa {string}') do |busca|
  @home.digitar_busca(busca)
end

Quando('eu adicionar um item ao carrinho') do 
  @home.swipe
  @home.swipe
  @home.add_to_cart
end

E('for direcionado ao carrinho') do
  @home.swipe
  @home.tocar_botao_css("[title*='Proceed to checkout']")
  @home.shopping_cart
end 

Entao('o item deve ter sido adicionado') do
  @home.product_cart
end
