Feature: Practise All Karate Feature - Example1

  Scenario: Define Java Script and Read Value from Script and print It.
    * def getDate =
      """
      function() {
        var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
        var sdf = new SimpleDateFormat('yyyy/MM/dd');
        var date = new java.util.Date();
        return sdf.format(date);
      } 
      """
    * def temp = getDate()
    * print temp

  Scenario: Define Java Script and Read Value from Script and print It - UUID.
    * def getUUID =
      """
      function(){ return java.util.UUID.randomUUID() + '' }
      """
    * def tempUUID = getUUID()
    * print tempUUID

  Scenario: Define Java Script and Read Value from Script and print It - Random Number.
    * def getRandomNumber =
      """
      function(max){ return Math.floor(Math.random() * max) } 
      """
    * def tempRandomNumber = getRandomNumber()
    * print tempRandomNumber

  Scenario: Read Value from config File and print It.
    * def inputConfig = read ('classpath:config.properties')
    * print inputConfig

  Scenario: Read One Function from Js File (Has Only One Function) and print It.
    * def getDateFunction = read ('classpath:/com/gorest/utils/Helper.js')
    * def getDateVariable = call getDateFunction
    * print getDateVariable
