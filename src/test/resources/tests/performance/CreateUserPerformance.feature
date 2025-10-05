Feature: Performance Test - Create User

Background:
  * url 'https://httpbin.org'

@performance
Scenario Outline: Create User Performance Test
  Given path '/post'
  And request 
    """
    {
      "name": "<name>",
      "email": "<email>", 
      "age": <age>,
      "city": "<city>"
    }
    """
  When method post
  Then status 200
  And print 'User created:', response.json.name
  And print 'Response time:', responseTime, 'ms'

  Examples:
    | name | email | age | city |
    | João Silva | joao.silva@test.com | 25 | São Paulo |
    | Maria Santos | maria.santos@test.com | 30 | Rio de Janeiro |
    | Pedro Oliveira | pedro.oliveira@test.com | 28 | Belo Horizonte |
    | Ana Costa | ana.costa@test.com | 35 | Brasília |
    | Carlos Ferreira | carlos.ferreira@test.com | 27 | Salvador |