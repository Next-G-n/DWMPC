<%--
  Created by IntelliJ IDEA.
  User: kaone
  Date: 10/15/2021
  Time: 12:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

  <script>
    function myFunction() {

      const accountSid = 'AC3fcd212cb95e2eb0a7cace746bc66dec';
      const authToken = '488c43f866c001bc2b4aa13e95708e50';
      const client = require('twilio')(accountSid, authToken);

      client.messages
              .create({
                to: '+26776222559',
                from:'+12674483154',
                body:"Your license has been successfully been approved."
              })
              .then(message => console.log(message.sid))
              .done();

    }

  </script>
</head>
<body>
<input type="button"name="test" value="test" placeholder="test" onclick="myFunction()">
</body>
</html>
