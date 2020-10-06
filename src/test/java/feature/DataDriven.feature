Feature: Data driven test

  Background:
    * url 'http://dummy.restapiexample.com/'

@parallel=false
  Scenario Outline: Data driven
    Given path 'api/v1/create'
    And request {"name":<name>,"salary":<salary>,"age":<age>}
    When method POST
    Then status 200
    Then print 'response--1-',response
    * def result = response

    Given path 'api/v1/employee/'+ result.data.id
    And method GET
    Then status 200
    Then print 'response--2-',response
#   And match response.data contains {id:'#(result.data.id)'}

    Examples:
      |name|salary|age|
      |test|2000  |20 |

#  Scenario Outline: Data driven approach
#    Given path 'api/v1/create'
#    And request {"name":<name>,"salary":<salary>,"age":<age>}
#    When method POST
#    Then status 200
#    Then print 'response--1-',response
#    * def result = response
#
#    Given path 'api/v1/employee/'+ result.data.id
#    And method GET
#    Then status 200
#    Then print 'response--3-',response
#
#    Examples:
#   |read('../Data/inputData.csv')|