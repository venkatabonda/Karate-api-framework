Feature: API Authetication

  Background:
    * url 'https://reqres.in/api/'


  Scenario: Authentication Test
    * def params =
    """
    {
    'mail': '#(email)',
    'password': '#(password)'
    }
    """
 When path 'auth/token'
    And form field grant_type = 'client credentials'
    And form fields params
    When method POST
    Then status 200
    Then print 'response---',response

   * def accessToken = response.access_token
    Then print 'accessToken---'accessToken




    