<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/24
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
</head>
<style>
    body {
        text-align: center;
        background-image: url("https://image.freepik.com/free-photo/blurred-ping-pong-table_1203-96.jpg");
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
    table{
        margin-left: auto;
        margin-right: auto;
    }
</style>
<body>

<h1 align="center">SupplierPage-EquipmentList</h1>
<br/>
<table border="1" >
    <tr>
        <th>Equipment_ID</th>
        <th>Equipment_Name</th>
        <th>Price($)</th>
        <th>Warranty_Period</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="equip" items="${requestScope.equipList}">
        <tr>
            <td>${equip.id}</td>
            <td>${equip.eName}</td>
            <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${equip.price}"/></td>
            <td>${equip.warranty}</td>
            <td><a href="updateEquipment.htm?id=${equip.id}">Update</a></td>
            <td><a href="removeEquipment.htm?id=${equip.id}">Remove</a></td>
        </tr>
    </c:forEach>
</table>

<br/><br/>
<form method="post" action="addEquip.htm">
    <input type="submit" value="Add Equipment"/>
</form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>

</body>
</html>
