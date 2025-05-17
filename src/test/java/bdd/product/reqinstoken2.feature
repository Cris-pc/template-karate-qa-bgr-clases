Feature: Certificar ends point resques in


  Background:
    * def responselogin = call read('reqinstoken.feature@TOKEN')
    * def obtenertoken = responselogin.autoken
    * print obtenertoken
    * url 'https://student.geekqa.net'
    * header Authorization = "Bearer" + obtenertoken


  Scenario: Consulta de estudiante
    Given path  '/api/students/46'
    When method GET
    * print response
    Then status 200


  Scenario: Consulta de busqueda de estudiante
    Given path  '/api/students/'
    When method GET
    * print response
    Then status 200