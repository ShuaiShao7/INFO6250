<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/25
  Time: 1:04
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Supplier</title>
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
<h1>Update Equipment with id : ${existingEquipment.id} </h1>

<form:form method="post" modelAttribute="existingEquipment" action="updateEquipment2.htm">
    <form:hidden path="id" />
    <table border="1" align="center">
        <tr>
            <th>Equipment_Name</th>
            <th>Price($)</th>
            <th>Warranty_Period</th>
        </tr>
        <tr>
            <td><form:input path="eName"/></td>
            <td><form:input path="price"/></td>
            <td><form:input path="warranty"/></td>
        </tr>
    </table>
    <br/>
    <input type="submit" value="Update Equipment" />
</form:form>
<br/><br/>
<form method="post" action="returnEquipList.htm">
    <input type="submit" value="Back to Equipment List">
</form>
<%--<br/><br/>--%>
<%--<form:form method="post" modelAttribute="existingSupplier" action="returnSupplier.htm?id=${existingSupplier.id}">--%>
<%--    <input type="submit" value="Back to Supplier Page">--%>
<%--</form:form>--%>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>