<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/21
  Time: 18:20
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
<h1> Add a new Supervisor </h1>

<form:form method="post" modelAttribute="newSup" action="addSup.htm">
    <form:hidden path="id" />
<table border="1" align="center">
    <tr>
        <th>First_Name</th>
        <th>Last_Name</th>
        <th>Street</th>
        <th>City</th>
        <th>State</th>
        <th>Zip</th>
        <th>Password</th>
    </tr>
    <tr>
        <td><form:input path="fName"/></td>
        <td><form:input path="lName"/></td>
        <td><form:input path="street"/></td>
        <td><form:input path="city"/></td>
        <td><form:input path="state"/></td>
        <td><form:input path="zip"/></td>
        <td><form:input path="password"/></td>
    </tr>
</table>
    <br/>
    <input type="submit" value="Add Supervisor" />
</form:form>
<br/>
<%--<form:form method="post" modelAttribute="newSup" action="addSup.htm">--%>
<%--    <form:hidden path="id" />--%>
<%--    FirstName : <form:input path="fName"/><br />--%>
<%--    LastName :<form:input path="lName"/><br />--%>
<%--    Street:<form:input path="street"/><br/>--%>
<%--    City:<form:input path="city"/><br/>--%>
<%--    State:<form:input path="state"/><br/>--%>
<%--    Zip:<form:input path="zip"/><br/>--%>
<%--    Password:<form:input path="password"/><br/>--%>
<%--    <input type="submit" value="Add Supervisor" />--%>
<%--</form:form>--%>

<br/>
<form method="post" action="returnSup.htm">
    <input type="submit" value="Back to Supervisor List">
</form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
