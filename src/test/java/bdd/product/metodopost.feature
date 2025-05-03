Feature: Certificar el servicio https://petstore.swagger.io/#/user/createUser todo metodo post.

  Scenario: caso creacion de usuario.
    Given url 'https://petstore.swagger.io/v2/user'
    When request {  "id": 12,  "username": "jjj",  "firstName": "string",  "lastName": "string",  "email": "string",  "password": "string","phone": "string","userStatus": 0}
    And method POST
    Then status 200
    And match response.code == 200
    And match response.message == '#string'

    Scenario: Creacion de producto.
      Given url 'https://fakestoreapi.com/products'
      When request
      """
      {
        "id": 0,
       "title": "string",
       "price": 0.1,
       "description": "string",
       "category": "string",
      "image": "http://example.com"
     }
      """
      And method POST
      Then status 200

      Scenario Outline: Creacion de producto con tabla dinamica.
        Given url 'https://fakestoreapi.com/products'
        When request
        """
              {
               "id": <vid>,
               "title": "<vtittle>",
                "price": <vprice>,
               "description": "<description>",
               "category": "<vcategory>",
              "image": "http://example.com"
             }
        """
        And method POST
        Then status 200
        Examples:
          | vid | vtittle       | vprice  | description  | vcategory |
          | 1   | libro brayan  | 1       | tester1      | ficci@n   |
          | 2   | libro brayan2 | 1       | tester1      | ficci@n   |
          | 3   | libro brayan3 | 1       | tester1      | ficci@n   |
          | 4   | libro brayan4 | 1       | tester1      | ficci@n   |
          | 5   | libro brayan5 | 1       | tester1      | ficci@n   |




