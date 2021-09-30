Feature: Practise All Karate Feature

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

  Scenario: Read Value from Js File and print It.
    * def inputJson = read ('classpath:com/gorest/utils/Helper.js')
    * print inputJson
