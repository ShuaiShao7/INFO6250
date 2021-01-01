<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/20
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Supervisor</title>
</head>


<style>
    body {
        text-align: center;
        background-image: url("https://image.freepik.com/free-photo/blur-gym-fitness_74190-4427.jpg");
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
        min-height: 100vh;
        font-family: 'Roboto', sans-serif;
        overflow: hidden;
    }
    table{
        margin-right: auto;
        margin-left: auto;
    }
    form {
        display: inline-block;
    }
</style>
<body>
<h1>Update Supervisor with id : ${existingSupervisor.id} </h1>

<form:form method="post" modelAttribute="existingSupervisor" action="updateSuper2.htm">
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
    <input type="submit" value="Update Supervisor" />
</form:form>
<br/><br/>
<form method="post" action="returnSup.htm">
    <input type="submit" value="Back to Supervisor List">
</form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>