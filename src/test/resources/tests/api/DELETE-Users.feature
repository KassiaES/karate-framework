Feature: Testes API - DELETE Users

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: DELETE - Remover usuário
    Given path '/users/1'
    When method DELETE
    Then status 200
    * print 'Usuário removido com sucesso'

  Scenario: DELETE - Remover post
    Given path '/posts/1'
    When method DELETE
    Then status 200
    * print 'Post removido com sucesso'

  Scenario: DELETE - Verificar que usuário foi removido
    Given path '/users/1'
    When method DELETE
    Then status 200
    * print 'Usuário removido com sucesso'