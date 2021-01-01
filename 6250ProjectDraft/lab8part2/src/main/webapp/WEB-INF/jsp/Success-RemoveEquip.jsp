<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/25
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
<h1>Remove Equipment Success!</h1>

<br/><br/>
<form method="post" action="returnAd_Mem.htm">
    <input type="submit" value="Back to Member List">
</form>

<%--<form:form method="post" modelAttribute="existingSupplier" action="returnSupplier.htm?id=${existingSupplier.id}">--%>
<%--    <input type="submit" value="Back to Supplier Page">--%>
<%--</form:form>--%>

<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
