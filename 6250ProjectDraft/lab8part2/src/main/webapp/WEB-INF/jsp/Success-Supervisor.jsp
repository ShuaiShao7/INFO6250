<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/22
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success Supervisor</title>
</head>

<style>
    body {
        text-align: center;
    }
    form {
        display: inline-block;
    }
</style>
<body>
<h1>Success!</h1>
<br/><br/>
<form method="post" action="returnAd_Mem.htm">
    <input type="submit" value="Back to Member List">
</form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
