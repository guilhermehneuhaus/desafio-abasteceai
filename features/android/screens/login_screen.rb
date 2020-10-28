class LoginScreen < BaseScreen
    def initialize
      @box_create_account = 'create-account_form'
      @box_email = 'email'
      @box_senha = 'passwd'
    end
  
    def login_page
      verifica_tela_id(@box_create_account)
    end

    def preencher_email(string1)
      campo_email = $driver.find_element(:id, @box_email)
      campo_email.send_keys(string1)
    end

    def preencher_senha(string2)
      campo_senha = $driver.find_element(:id, @box_senha)
      campo_senha.send_keys(string2)
    end

    def is_loged
      verifica_tela_css("[title*='View my customer account']")
    end

    def not_loged
      verifica_tela_css("div[class*='alert alert-danger']")
    end
  end
  