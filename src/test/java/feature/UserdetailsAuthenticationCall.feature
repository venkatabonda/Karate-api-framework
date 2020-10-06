Feature: Call to token generation feature

  Background:
    * url 'https://reqres.in/api/'
* def myFeature = call read('userDetailsAuthenticationTest.feature'){ 'email' = 'eve.holt@reqres.in,  'password' = 'pistol'}
* def authToken = myFeature.accessToken

    Scenario: GET call
Then print 'authToken---',authToken






    