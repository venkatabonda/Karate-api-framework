@ignore
Feature: API Authetication

  Background:
    * url 'https://reqres.in/api/register'


  Scenario: Authentication Test
    Given path 'token'
    And form field grant_type = 'client credentials'
    And form field client_id = ''
    And form field Client_secret = ''
    When method POST
    Then status 200

    * def accessToken = response.access_token

    Given path ''
    And header Authorisation = 'Bearer' + accessToken
    When method GET
    Then status 200
