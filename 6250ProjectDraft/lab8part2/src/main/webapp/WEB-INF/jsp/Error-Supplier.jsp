<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/24
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Error update Supplier</title>
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

<h1>Update Supplier Failed <br/>Please check data:(</h1>
<br/>
<form method="post" action="returnSupplierList.htm">
    <input type="submit" value="Back to Supplier List">
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