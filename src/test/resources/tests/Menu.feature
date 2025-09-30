Feature: Testes de UI para Floating Menu 

  Background:
    * configure driver = { type: 'chrome', showDriverLog: true, highlightDuration: 3000, headless: true }
    * def slowDown = function(){ java.lang.Thread.sleep(2000) }

  Scenario: Testar floating menu básico
    Given driver 'https://the-internet.herokuapp.com/floating_menu'
    Then waitForUrl('https://the-internet.herokuapp.com/floating_menu')
    And delay(2000)
    
    And match exists('#menu') == true
    And delay(1000)
    And match text("#menu ul li a[href='#home']") == 'Home'
    And delay(1000)
    And match text("#menu ul li a[href='#news']") == 'News'
    And delay(1000)
    
    When click("#menu ul li a[href='#home']")
    Then delay(3000)
    And match driver.url contains '#home'
    And delay(2000)

  Scenario: Testar floating menu com scroll
    Given driver 'https://the-internet.herokuapp.com/floating_menu'
    Then waitForUrl('https://the-internet.herokuapp.com/floating_menu')
    
    And match exists('#menu') == true
    
    And scroll(0, 1000)
    And delay(1000)
    And match exists('#menu') == true

