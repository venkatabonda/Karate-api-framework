Feature: Get all users Details with functions

  Background:
#    * url 'https://reqres.in'
   * def expectedOutput = read('../Data/result.json')

  Scenario: GET all users details
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    * def data = response.data
    Then print  'data---',data
    * def myFun =
    """
    function(arg){
    return arg.length
    }
    """
    * def numberOfUsers = call myFun data
    Then print 'numberOfUsers---',numberOfUsers


  Scenario: GET request users id details
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    * def data = response.data
    Then print  'data---',data
    * def myFun =
    """
    function(arg){
    return arg[0].id
    }
    """
    * def userDetails = call myFun data
    Then print 'userDetails---',userDetails


  Scenario: GET request users id details of 9th person
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    * def data = response.data
    Then print  'data---',data
    * def myFun =
    """
    function(arg){
    for (i=0; i<arg.length; i++){
    if (arg[i].id== 9){
    return arg[i]
          }
       }
    }
    """
    * def userDetails = call myFun data
    Then print 'userDetails---',userDetails