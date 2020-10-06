
Feature: Get all user Details

  Background:
    * url 'https://reqres.in'
    * def expectedOutput = read('../Data/MultipleResults.json')
    """
    function(secounds){
    for (i=0; i <= secounds; i++)
    { java.lang.Thread.sleep(1*1000);
    }
    }
    """

  Scenario: GET request user 1 details
  Given path '/api/users/1'
  When method GET
  Then status 200
  Then print response
  And match response == expectedOutput[0]

  @parallel=false
  Scenario: GET request user 2 details
    Given path '/api/users/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[1]

  @parallel=false
  Scenario: GET request user 3 details
    Given path '/api/users/3'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput[2]