Feature: Testes API - GET Users

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: GET - Buscar todos os usuários
    Given path '/users'
    When method GET
    Then status 200
    And match response == '#array'
    And match response[0].id == '#number'
    And match response[0].name == '#string'
    And match response[0].email == '#string'
    * print 'Total de usuários:', response.length

  Scenario: GET - Buscar usuário específico por ID
    Given path '/users/1'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'
    And match response.email == 'Sincere@april.biz'
    And match response.address == '#object'