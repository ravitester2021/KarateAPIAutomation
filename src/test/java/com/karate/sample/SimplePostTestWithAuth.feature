#Simple open api POST test
Feature: Simple POST API test.

  Scenario: Create User
    * def ConfigJson = read ('classpath:/com/gorest/utils/test-config.json')
    * print "Reading Values from Config.Json"
    * def requestJson = read ('classpath:/com/gorest/requests/CreateUserRequest.json')
    * print "Reading Values from Request.Json"
    Given header Authorization = ConfigJson.Authorization
    And header Accept = 'application/json'
    * print "Setting up Headers for the request"
    Given url ConfigJson.post_Url
    And request requestJson
    When method post
    Then status 201

  Scenario: Create Existing User Again and Validate Response
    * def ConfigJson = read ('classpath:/com/gorest/utils/test-config.json')
    * def requestJson = read ('classpath:/com/gorest/requests/CreateUserRequest.json')
    Given header Authorization = ConfigJson.Authorization
    And header Accept = 'application/json'
    Given url ConfigJson.post_Url
    And request requestJson
    When method post
    Then status 422
    Then response.data[0].field == 'email'
    Then response.data[0].message == 'has already been taken'
