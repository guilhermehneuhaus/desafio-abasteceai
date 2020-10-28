Quando('eu for direcionado para tela de login') do
  @login = LoginScreen.new
  @login.tocar_botao_css("[title*='Log in to your customer account']")
  @login.login_page
end

E('preencher com o usuário {string} e a senha {string}') do |string1, string2|
  user = string1
  password = string2

  @home.swipe
  @home.swipe
  @login.preencher_email(string1)
  @login.preencher_senha(string2)
  sleep(5)
  @login.tocar_botao_id('SubmitLogin')
end

Entao ('o login deve ou não ser feito {string}') do |loged|
  if loged == 'Success'
    @login.is_loged
  elsif
    @login.not_loged
  end
end