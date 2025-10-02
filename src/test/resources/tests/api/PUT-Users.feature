Feature: Testes API - PUT Users

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: PUT - Atualizar usuário completo
    Given path '/users/1'
    And request
      """
      {
        "id": 1,
        "name": "João Silva Atualizado",
        "username": "joaosilva_new",
        "email": "joao.novo@teste.com",
        "address": {
          "street": "Rua Nova",
          "city": "Rio de Janeiro"
        },
        "phone": "21-88888-8888"
      }
      """
    When method PUT
    Then status 200
    And match response.id == 1
    And match response.name == 'João Silva Atualizado'
    And match response.email == 'joao.novo@teste.com'
    * print 'Usuário atualizado:', response.name

  Scenario: PUT - Atualizar post
    Given path '/posts/1'
    And request
      """
      {
        "id": 1,
        "title": "Post Atualizado",
        "body": "Conteúdo do post foi atualizado",
        "userId": 1
      }
      """
    When method PUT
    Then status 200
    And match response.id == 1
    And match response.title == 'Post Atualizado'
    And match response.body == 'Conteúdo do post foi atualizado'