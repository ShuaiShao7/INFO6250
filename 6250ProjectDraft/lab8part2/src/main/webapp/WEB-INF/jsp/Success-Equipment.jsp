<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/25
  Time: 1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success Equipment</title>
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
<form method="post" action="returnEquipList.htm">
    <input type="submit" value="Back to Equipment List">
</form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
