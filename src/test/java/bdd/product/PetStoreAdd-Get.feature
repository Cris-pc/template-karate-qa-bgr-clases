@plan-de-pruebas-ADD-GET
Feature: Certificar end point "https://petstore.swagger.io/" reto NTTDATA

  Background:
    * url urlBase
    * def body = call read ('classpath:resources/json/auth/bodyAddPets.json')
    * header Accept = "application/json"
    * header 'Content-Type' = "application/json"


  Scenario Outline: TEST- <numCaso>- Certificar WS PET ADD - Añadir una mascota a la tienda.
    Given path  '/v2/pet'
    And  request body
    When method POST
    Then status 200
    * print response
    And match response.name == "doggie"
    And match response.status == "available"
    Examples:
      |read('classpath:resources/csv/auth/datadriveaddpet.csv')|


  Scenario Outline: TEST- <numCaso> - Certificar WS FIND PET ID - Consultar la mascota ingresada previamente (Búsqueda por ID).
    Given path '/v2/pet/<id>'
    When method GET
    Then status 200
    * print response
    And match response.name == "doggie"
    Examples:
      |read('classpath:resources/csv/auth/datadriveaddpet.csv')|
