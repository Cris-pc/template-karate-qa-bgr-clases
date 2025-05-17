Feature: Flujo e2e servicio usuario en el end point 'https://petstore.swagger.io/



  @name=loginprod1
  Scenario: caso 15 login exitoso
    * header x-api-key = "reqres-free-v1"
    * def body =
    """
    {
      "email": "eve.holt@reqres.in",
     "password": "cityslicka"
    }
    """
    Given url 'https://reqres.in'
    And path '/api/login'
    And request body
    When method post
    Then status 200
    * print response
    And match response.token == "#string"
    * def autoken = response.token
    * print autoken

