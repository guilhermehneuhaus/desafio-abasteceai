E ('realizar o fluxo de compra') do
  @transaction = TransactionScreen.new
  @home.swipe
  @home.tocar_botao_css("[title*='Proceed to checkout']")
  sleep(3)
  @home.swipe
  @home.swipe
  @home.swipe
  @home.tocar_botao_css("[title*='Proceed to checkout']")
  @home.swipe
  @home.swipe
  @home.swipe
  @login.preencher_email('guilherme.neuhaus@compasso.com.br')
  @login.preencher_senha('vivi1404')
  @login.tocar_botao_id('SubmitLogin')
  @home.swipe
  @home.swipe
  @home.swipe
  @home.tocar_botao_css("[name*='processAddress']")
  @home.swipe
  @home.swipe
  @login.tocar_botao_id('cgv')
  @home.tocar_botao_css("[name*='processCarrier']")
  @home.swipe
  @home.swipe
  @home.swipe
  @home.tocar_botao_css("[title*='Pay by bank wire']")
  @home.swipe
  @home.swipe
  @home.swipe
  @home.tocar_botao_css("[type*='submit']")
end

Entao ('a compra deve ser finalizada') do
  
end