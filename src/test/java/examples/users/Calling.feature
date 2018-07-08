Feature: Call java/Java Scripts

  Scenario: Call java file
    * def utils = Java.type('examples.Support.Untils')
    * def email = utils.generateEmail()
    * def currentMils = utils.getCurrenTime()
    * def Sum = utils.sum(2,3)
    * match Sum == 5
    * print Sum
    
  Scenario: call java script file
    * def Authorization = call read('basic-auth.js') { username: 'chinh', password:'secret'}
    * print Authorization

  Scenario: call java feature
    * def SignIn = call read('SignIn.feature') { username: 'chinh', password:'secret'}
    * def authToken = SignIn.authToken

  @env=stage
  @wip
  Scenario: switch evn
    * print someUrlBase

    Scenario Outline: abc
      * print a: "<a>"
      Examples:
      |a|
      |1|

