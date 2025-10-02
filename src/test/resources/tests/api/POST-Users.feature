Feature: Testes API - POST Users

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: POST - Criar novo usuário
    Given path '/users'
    And request
      """
      {
        "name": "João Silva",
        "username": "joaosilva",
        "email": "joao@teste.com",
        "address": {
          "street": "Rua das Flores",
          "city": "São Paulo"
        },
        "phone": "11-99999-9999"
      }
      """
    When method POST
    Then status 201
    And match response.id == '#number'
    And match response.name == 'João Silva'
    And match response.email == 'joao@teste.com'
    * print 'Usuário criado com ID:', response.id

  Scenario: POST - Criar post para usuário
    Given path '/posts'
    And request
      """
      {
        "title": "Meu primeiro post",
        "body": "Este é o conteúdo do meu post de teste",
        "userId": 1
      }
      """
    When method POST
    Then status 201
    And match response.id == '#number'
    And match response.title == 'Meu primeiro post'
    And match response.userId == 1