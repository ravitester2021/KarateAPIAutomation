Feature: Practise All Karate Feature - Example2

  Scenario: Read One Value from config File (has Multiple Values) and print It.
    * def inputConfig = read ('classpath:config.properties')
    * print inputConfig.$statusCode
    * print inputConfig.file_path
    * print inputConfig.base_Url
    * print inputConfig

  Scenario: Read One Value from Config.json File (has Multiple Values) and print It.
    * def someJson = read ('classpath:/com/gorest/utils/test-config.json')
    * print someJson.statusCode
    * print someJson.file_path
    * print someJson.base_Url

  @ignore
  Scenario: Read One Value from config File (has Multiple Values) and print It.
    * def inputConfig = karate.readAsString ('classpath:config.properties')
    * def statusCodeVal = karate.extract(inputConfig,'statusCode',1)
    * print statusCodeVal

  Scenario: Validate Responses
    * def ConfigJson = read ('classpath:/com/gorest/utils/test-config.json')
    * def baseUrl = ConfigJson.base_Url
    * print "Your Base Url : "+baseUrl
    * def get_Url = ConfigJson.get_Url
    * print "Your Get Url : "+get_Url
    Given url baseUrl+get_Url
    * print "Success - "+baseUrl+get_Url
    When method get
    Then status 200
    #Then match response.meta.pagination.total != 1000
    #Then match response.data[0].id 1844
    #Then match response.data[0].name == "fake name"
    #Then match response.data[0].email == 'testemail-95@gmail.com'
    Then match response.data[0].gender == 'male'
    Then match response.data[0].status == 'active'
