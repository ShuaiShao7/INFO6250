<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/21
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    table{
        margin-left: auto;
        margin-right: auto;
    }
    form {
        display: inline-block;
    }
</style>

<body>
<h1 align="center">Member Info</h1>
<br/>

<table border="1" align="center">
    <tr>
        <th>MemberID</th>
        <th>First_Name</th>
        <th>Last_Name</th>
        <th>Street</th>
        <th>City</th>
        <th>State</th>
        <th>Zip</th>
        <th>User_Name</th>
        <th>Password</th>
        <th>Reserve_Date(EST)</th>
        <th>Section</th>
        <th>Update</th>

    </tr>
    <c:forEach var="mem" items="${requestScope.member}">
        <tr>
            <td>${mem.id}</td>
            <td>${mem.fName}</td>
            <td>${mem.lName}</td>
            <td>${mem.street}</td>
            <td>${mem.city}</td>
            <td>${mem.state}</td>
            <td>${mem.zip}</td>
            <td>${mem.uName}</td>
            <td>${mem.password}</td>
            <td>${mem.date}</td>
            <td>${mem.section}</td>
            <td><a href="updateMember.htm?id=${mem.id}">Update</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<table border="1" align="center">
    <tr>
        <th>New_Reserve</th>
        <th>Review</th>
    </tr>
<c:forEach var="mem" items="${requestScope.member}">
    <tr>
    <td><a href="memberDate.htm?id=${mem.id}">Reserve</a></td>
    <td><a href="memberReview.htm?id=${mem.id}">Review</a></td>
    </tr>
</c:forEach>

</table>

<br/>

<%--<br/><br/>--%>
<%--<form method="post" action="addMem.htm">--%>
<%--    <input type="submit" value="Add Member"  />--%>
<%--</form>--%>
<%--<br/><br/>--%>
<%--<form method="get" action="searchMem.htm">--%>
<%--    <input type="text" name="MemId">--%>
<%--    <input type="submit" value="Search ID">--%>
<%--</form>--%>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>

</body>
</html>
