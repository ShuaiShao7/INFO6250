<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/22
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Success Member</title>
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
<h1>Update Member with id : ${existingmember.id} Success!</h1>

<form:form method="post" modelAttribute="existingmember" action="returnMem.htm?id=${existingmember.id}">
    <input type="submit" value="Back to Member Page">
</form:form>
<%--<br/><br/>--%>
<%--<form method="post" action="returnMem.htm">--%>
<%--    <input type="submit" value="Back to Member Page">--%>
<%--</form>--%>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
