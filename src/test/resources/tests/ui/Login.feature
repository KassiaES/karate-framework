Feature: Teste de Login no HerokuApp

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: Validar login com usuário e senha inválidos
    Given driver 'https://the-internet.herokuapp.com/login'
    And input('#username', 'Kassinha')
    And input('#password', 'MinhaSenhaSuperScreta!')
    When click("button[type='submit']")
    Then waitForText('#flash', 'Your username is invalid!')

  Scenario: Validar login com usuário e senha válidos
    Given driver 'https://admin:admin@the-internet.herokuapp.com/basic_auth'
    Then waitForUrl('https://the-internet.herokuapp.com/basic_auth')
    And match html('body') contains 'Congratulations'
