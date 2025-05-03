Feature: Certificar el servicio https://reqres.in/ todo metodo get.


  Scenario: T - Certificar el metodo get con la lista de usuario.
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And match response.page == 2
    And match response.total == '#number'
    And match response.data[1].first_name == "Lindsay"
    And match response.data[1].email == '#string'



