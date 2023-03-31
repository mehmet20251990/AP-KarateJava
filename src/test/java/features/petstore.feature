Feature: petstore
  
  Background: 
    * url 'https://petstore.swagger.io/v2'
    * def rB =
    """
    {
  "id": 0,
  "username": "string",
  "firstName": "string",
  "lastName": "string",
  "email": "string",
  "password": "string",
  "phone": "string",
  "userStatus": 0
    }
    """
    Scenario: POST
      Given path '/user'
      And request rB
      When method Post
      Then status 200
      And match $.message != "9223372036854771849"

