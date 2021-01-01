<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/22
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<h1>Something went wrong :(<br/>
    Please type valid data</h1>

<br/><br/>
<form method="post" action="addMem.htm">
    <input type="submit" value="Back to Register Page">
</form>

<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
