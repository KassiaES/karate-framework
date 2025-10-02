Feature: Testes de UI para Floating Menu e Dropdown

  Background:
    * configure driver = { type: 'chrome', showDriverLog: true, highlightDuration: 3000, headless: true }
    * def slowDown = function(){ java.lang.Thread.sleep(2000) }

  Scenario: Testar floating menu básico
    Given driver 'https://the-internet.herokuapp.com/floating_menu'
    Then waitForUrl('https://the-internet.herokuapp.com/floating_menu')
    And delay(2000)
    
    # Verificar se o menu está presente
    And match exists('#menu') == true
    And delay(1000)
    And match text("#menu a[href='#home']") == 'Home'
    And delay(1000)
    And match text("#menu a[href='#news']") == 'News'
    And delay(1000)
    
    # Testar clique no menu
    When click("#menu a[href='#home']")
    Then delay(3000)
    And match driver.url contains '#home'
    And delay(2000)

  Scenario: Testar floating menu com scroll
    Given driver 'https://the-internet.herokuapp.com/floating_menu'
    Then waitForUrl('https://the-internet.herokuapp.com/floating_menu')
    And delay(2000)
    
    * print 'URL atual:', driver.url
    
    # Verificar se menu existe antes do scroll
    And match exists('#menu') == true
    
    # Fazer scroll e verificar se menu continua visível
    And scroll("//text()[contains(., 'Powered by')]/parent::*")
    And delay(2000)
    And match exists('#menu') == true