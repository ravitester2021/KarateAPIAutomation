# Call one Feature file into another one test
Feature: Simple test to call one feature to another.

  Scenario: Create User
    * def heathResult = call read('SimpleGetTest.feature')
    * def heathIs = $heathResult.response
    * match heathIs == {"alive": true}
