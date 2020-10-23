class HomeScreen < BaseScreen
    def initialize
      @logo_header = 'header_logo'
      @barra_busca = 'search_query_top'
    end
  
    def homepage
      $driver.get('http://automationpractice.com/index.php')
      verifica_tela_id(@logo_header)
    end
  
    def digitar_busca(busca)
      wait { find_element(id: @barra_busca).send_keys(busca) }
    end

    def add_to_cart
      tocar_botao_class('ajax_add_to_cart_button')
      sleep(5)
    end

    def shopping_cart
      verifica_tela_css("[title*='Return to Home']")
    end

    def product_cart
      verifica_tela_id('product_1_1_0_0')
    end
  end
  