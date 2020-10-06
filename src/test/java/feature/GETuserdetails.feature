
Feature: user Details

  Background:
    * url 'https://reqres.in'

  Scenario: get call test
  Given path '/api/users/2'
  When method GET
  Then status 200
  Then print response
#  And match response == {"data":{"id":2,"email":"janet.weaver@reqres.in","first_name":"Janet","last_name":"Weaver","avatar":"https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg"},"ad":{"company":"StatusCode Weekly","url":"http://statuscode.org/","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things."}} 13:36:07.968 [ForkJoinPool-1-worker-1] DEBUG com.jayway.jsonpath.internal.path.CompiledPath - Evaluating path: $ 13:36:07.968 [ForkJoinPool-1-worker-1] INFO com.intuit.karate - [print] { "ad": { "company": "StatusCode Weekly", "text": "A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things.", "url": "http://statuscode.org/" }, "data": { "last_name": "Weaver", "id": 2, "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg", "first_name": "Janet", "email": "janet.weaver@reqres.in" } }
* def expectedOutput = read('../Data/result.json')
    And match response == expectedOutput
    And match response.data.id == 2
#    And match response.data.email == janet.weaver@reqres.in
  And match response.data.last_name != null