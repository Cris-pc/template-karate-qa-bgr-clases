Feature: Flujo e2e generar token

  Background:
    * header Content-Type = "application/json"

  @TOKEN
  Scenario: Api que genera token https://student.geekqa.net/api/login
    * def body =
    """
     {
        "email": "geekqa@test.com",
        "password": "geekqa2025"
      }
    """
    Given url 'https://student.geekqa.net'
    And path '/api/login'
    And request body
    When method POST
    Then status 200
    * print response
    * def autoken = response.access_token
    * print autoken

