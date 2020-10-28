class BaseScreen
  
  def verifica_tela_id(screen)
    $driver.wait_true(10) { $driver.exists { $driver.find_element(:id, screen) } }
  end

  def verifica_tela_css(screen)
    $driver.wait_true(10) { $driver.exists { $driver.find_element(:css, screen) } }
  end

  def swipe
    rolar_tela = Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.5, end_x: 0.5, end_y: 0.1, duration: 500)
    rolar_tela.perform
  end

  def tocar_botao_id(id)
    button = $driver.find_element(:id, id)
    button.click
  end

  def tocar_botao_class(id)
    button = $driver.find_element(:class_name, id)
    button.click
  end

  def tocar_botao_css(id)
    button = $driver.find_element(:css, id)
    button.click
  end

  def tocar_campo_id(id)
    button = $driver.find_element(:id, id)
    button.click
  end
end