Feature: Certificar el servicio https://petstore.swagger.io/#/user/createUser todo metodo post.
  
  Background: 
    * url urlBase
    * def body = call read ('classpath:resources/json/auth/body1.json')
    * header Accept = "application/json"
    * header Content-Type = "application/json"
    

  Scenario Outline: Creacion de usuario.
    Given path '/v2/store/order'
    And request body
    When method POST
    Then status 200
    Examples:
      |read('classpath:resources/csv/auth/datadrivepetstore.csv')|


