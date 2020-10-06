Feature: Create a New user

  Background:
    * url 'https://reqres.in'
    * def JsonPayload = read('../Data/PostCreateNewUser.json')
    * headers {Content-Type: 'application/json', Accept: 'application/json',Connection: 'Keep-Alive'}

  Scenario: Post Create a new user using jsonfile
  Given path '/api/users'
    And request JsonPayload
#    And headers {Content-Type: 'application/json', Accept: 'application/json',Connection: 'Keep-Alive'}
  When method POST
  Then status 201
    Then print 'response---',response

  Scenario: Post Create a new user with harcoded data
    Given path '/api/users'
    And request {"name": "sumac","job": "lead"}
    When method POST
    Then status 201
    Then print 'response---',response


  Scenario: get delayed response
    Given path '/api/users'
    And request JsonPayload
    And param delay = 3
    When method POST
    Then status 201
    Then print 'response---',response