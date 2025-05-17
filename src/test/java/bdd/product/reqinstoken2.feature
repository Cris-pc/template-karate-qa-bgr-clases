Feature: Certificar ends point resques in


  Background:
    * def responselogin = call read('reqinstoken.feature@name=loginprod1')
    * def obtenertoken = responselogin.autoken
    * print obtenertoken
    * url 'https://reqres.in'
    * header Authorization = "Bearer " + obtenertoken


  Scenario: caso 3 obtener token y verificar single user
    Given path  '/api/users/2'
    When method get
    Then status 200