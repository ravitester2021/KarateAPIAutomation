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

  * def getUUID =
  """
  function(){ return java.util.UUID.randomUUID() + '' }
  """

* def tempUUID = getUUID()
* print tempUUID
 