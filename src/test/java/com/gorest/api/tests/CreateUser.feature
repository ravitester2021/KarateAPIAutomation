Feature: Test Go Rest API - Create user POST calls.

  Scenario: Create One User using POST call.
    Given url 'https://gorest.co.in/public/v1/users'
    And request { name: 'Kokki Kumaru1',gender: 'Male',email: 'Kokki.kumar@15ce.com',status: 'Active'}
    And header Authorization = 'Bearer 4f2ed141520da56f691eddb09761d9e0d7ae1c40b1438867629f2ee476a3a5e7'
    When method post
    Then status 201
