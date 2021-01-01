<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/25
  Time: 0:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <title>Title</title>
</head>

<style>
    body {
        text-align: center;
        background-image: url("https://image.freepik.com/free-photo/cyclist-lifestyle-teen-fitness-young_1150-1016.jpg");
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
        min-height: 100vh;
        font-family: 'Roboto', sans-serif;
        overflow: hidden;
    }
    form {
        display: inline-block;
    }
</style>
<body>
<h1> Add a new Supplier </h1>

<form:form method="post" modelAttribute="newSupplier" action="addSupplier2.htm">
    <form:hidden path="id" />
    <table border="1" align="center">
        <tr>
            <th>Company_Name</th>
            <th>Contact_No</th>
            <th>Password</th>
        </tr>
        <tr>
            <td><form:input path="company"/></td>
            <td><form:input path="contact"/></td>
            <td><form:input path="password"/></td>
        </tr>
    </table>
    <br/>
    <input type="submit" value="Add Supplier" />
</form:form>
<br/>

<br/>
<form method="post" action="returnSupplierList.htm">
    <input type="submit" value="Back to Supplier List">
</form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
