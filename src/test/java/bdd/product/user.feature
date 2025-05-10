Feature: Flujo e2e servicio usuario en el end point 'https://petstore.swagger.io/

  Background:
    * url urlBase
    * def body = call read ('classpath:resources/json/auth/body_user.json')
    * header Accept = "application/json"
    * header Content-Type = "application/json"
    * def tiempo_espera =
  """
     function(seconds){
         for(i=0; i<=seconds; i++){
            java.lang.Thread.sleep(4000);
          }
      }
   """


  Scenario Outline: T - Cracion de usuario en el endpint 'https://petstore.swagger.io/
      Given path '/v2/user'
      And request body
      When method POST
      * print response
      Then status 200
      Examples:
        |read('classpath:resources/csv/auth/datadriveuser.csv')|


    Scenario: T - Certificar el servicio consulta con usuario antes creado
      * call tiempo_espera 4
      Given path '/v2/user/CRIS'
      When method GET
      * print response
      And match response.username == 'CRIS'
      And match response.firstName == 'FLORES'
      And match response.email == '#string'
      Then status 200


   Scenario Outline: T - Certificar el servicio update del usuario antes creado.
     Given path '/v2/user/CRIS'
     And request body
     When method PUT
     * configure connectTimeout = 150000
     * configure readTimeout = 150000
     * print response
     Then status 200
     Examples:
       |read('classpath:resources/csv/auth/datadriveuserupdate.csv')|


  Scenario: T - Certificar el servicio DELETE del usuario antes ACTUALIZADO.
    Given path '/v2/user/EDUARDO'
    When method DELETE
    * print response
    Then status 200

  Scenario: T - Certificar el servicio consulta del usuario antes eliminado.
    * call tiempo_espera 4
    Given path '/v2/user/EDUARDO'
    When method GET
    * print response
    Then status 404
