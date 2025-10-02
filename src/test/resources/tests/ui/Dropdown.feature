Feature: Testes de UI para Dropdown

  Background:
    * configure driver = { type: 'chrome', headless: true }
    Given driver 'https://the-internet.herokuapp.com/dropdown'
    Then waitForUrl('https://the-internet.herokuapp.com/dropdown')
    And delay(1000)

  Scenario: Testar dropdown - Seleção básica
    And match exists('#dropdown') == true
    
    # Testar seleção Option 1
    When select('#dropdown', '1')
    Then delay(500)
    And match value('#dropdown') == '1'
    * def option1Text = script('#dropdown', "_.options[_.selectedIndex].text")
    And match option1Text == 'Option 1'
    
    # Testar seleção Option 2
    When select('#dropdown', '2')
    Then delay(500)
    And match value('#dropdown') == '2'
    * def option2Text = script('#dropdown', "_.options[_.selectedIndex].text")
    And match option2Text == 'Option 2'

  Scenario: Testar dropdown - Trocar seleção
    When select('#dropdown', '1')
    Then delay(500)
    And match value('#dropdown') == '1'
    * def firstText = script('#dropdown', "_.options[_.selectedIndex].text")
    And match firstText == 'Option 1'
    
    When select('#dropdown', '2')
    Then delay(500)
    And match value('#dropdown') == '2'
    * def secondText = script('#dropdown', "_.options[_.selectedIndex].text")
    And match secondText == 'Option 2'

  Scenario: Testar dropdown - Verificar opções disponíveis
    * def optionsCount = script('#dropdown', '_.options.length')
    And match optionsCount == 3
    * def option1ElementText = script('#dropdown', '_.options[1].text')
    * def option2ElementText = script('#dropdown', '_.options[2].text')
    And match option1ElementText == 'Option 1'
    And match option2ElementText == 'Option 2'
