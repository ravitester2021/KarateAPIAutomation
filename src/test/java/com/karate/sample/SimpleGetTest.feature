#Simple open api get test
Feature: Simple GET API test.

  Scenario: Health Check of publicapis
    Given url 'https://api.publicapis.org/health'
    When method get
    Then status 200
    And match response == {"alive": true}

