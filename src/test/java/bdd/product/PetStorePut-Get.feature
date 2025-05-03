@plan-de-pruebas-PUT-GET
Feature: Certificar end point "https://petstore.swagger.io/" reto NTTDATA

  Background:
    * url urlBase
    * def body = call read ('classpath:resources/json/auth/bodyAddPets2.json')
    * header Accept = "application/json"
    * header 'Content-Type' = "application/json"


  Scenario Outline: TEST- <numCaso>- Certificar WS PET UPDATE - Actualizar el nombre de la mascota y el estatus de la mascota a “sold”.
    Given path  '/v2/pet'
    And  request body
    When method PUT
    Then status 200
    * print response
    Examples:
      |read('classpath:resources/csv/auth/datadriveaddpet2.csv')|


  Scenario Outline: TEST- <numCaso> - Certificar WS GET STATUS - Consultar la mascota modificada por estatus (Búsqueda por estatus)
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    When method GET
    Then status 200
    * print response
    Examples:
      |read('classpath:resources/csv/auth/datadriveaddpet2.csv')|
    