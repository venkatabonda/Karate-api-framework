Feature: Get call user Details with functions

  Background:
    * url 'https://reqres.in'
#    * def expectedOutput = read('../Data/MultipleResults.json')

  Scenario: GET request user 1 details
    Given path '/api/users/1'
    When method GET
    Then status 200
    * def myfun = function(){return 'hello'}
    * def returnedDate = call myfun
    Then print 'returnedData---',returnedData

    * def myfun2 =
    """
    function(){
    return'mydata'
    }
    """
    * def returnedDate2 = call myfun2
    Then print 'returnedData2---',returnedData2