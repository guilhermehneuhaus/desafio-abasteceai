E ('realizar o fluxo de compra') do
  @transaction = TransactionScreen.new
  @home.swipe
  @home.tocar_botao_css("[title*='Proceed to checkout']")
  sleep(2)
  @home.swipe
  @home.swipe
  @home.swipe
  sleep(1)
  @home.tocar_botao_css("[href*='http://automationpractice.com/index.php?controller=order&step=1']")
  @home.swipe
  @home.swipe
  @home.swipe
  @transaction.preencher_email('guilherme.neuhaus@compasso.com.br')
  @transaction.preencher_senha('vivi1404')
  sleep(1)
  @home.tocar_botao_id('SubmitLogin')
  @home.swipe
  @home.swipe
  @home.swipe
  @home.tocar_botao_css("[name*='processAddress']")
  @home.swipe
  @home.swipe
  @home.tocar_botao_id('cgv')
  @home.tocar_botao_css("[name*='processCarrier']")
  @home.swipe
  @home.swipe
  @home.swipe
  @home.tocar_botao_css("[title*='Pay by check.']")
  @home.swipe
  @home.swipe
  @home.swipe
  @home.tocar_botao_css("button[class*='button btn btn-default button-medium']")
  @home.swipe
  @home.swipe
  @home.swipe  
end

Entao ('a compra deve ser finalizada') do
  @transaction.verifica_tela_css("p[class*='alert alert-succes']")
end