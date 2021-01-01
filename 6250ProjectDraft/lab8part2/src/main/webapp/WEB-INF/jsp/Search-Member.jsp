<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/22
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<style type="text/css">
    table{
        margin-left: auto;
        margin-right: auto;
    }
    form {
        display: inline-block;
    }

    body{
        text-align: center;
        background-image: url("https://image.freepik.com/free-photo/cyclist-lifestyle-teen-fitness-young_1150-1016.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
    }
    #content-box{
        background-color:#FAFAFA;
        border:2px solid #888;
        height:300px;
        overflow:scroll;
        padding:4px;
        width:500px;
    }
    #content-box p{
        border:1px solid #EEE;
        background-color:#F0F0F0;
        padding:3px;
    }
    #content-box p span{
        color:#00F;
        display:block;
        font:bold 21px Arial;
        float:left;
        margin-right:10px;
    }
</style>
<script type="text/javascript">
    $(document).ready(function(){
        $contentLoadTriggered = false;
        $("#content-box").scroll(function(){
            if($("#content-box").scrollTop() >= ($("#content-wrapper").height() - $("#content-box").height()) && $contentLoadTriggered == false)
            {
                $contentLoadTriggered = true;
                $.get("infinitContentServlet", function(data){
                    $("#content-wrapper").append(data);
                    $contentLoadTriggered = false;
                });
            }

        });
    });
</script>


<body>
<h1>Member Search Result:</h1>

<c:choose>
<c:when test="${empty requestScope.memList}">
    <h1>No Result</h1>
</c:when>

<c:otherwise>
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
<%--        <th>Update</th>--%>
        <th>Delete</th>
    </tr>
    <c:forEach var="member" items="${requestScope.memList}">
        <tr>
            <td>${member.id}</td>
            <td>${member.fName}</td>
            <td>${member.lName}</td>
            <td>${member.street}</td>
            <td>${member.city}</td>
            <td>${member.state}</td>
            <td>${member.zip}</td>
            <td>${member.uName}</td>
            <td>${member.password}</td>
            <td>${member.date}</td>
<%--            <td><a href="updateMember.htm?id=${member.id}">Update</a></td>--%>
            <td><a href="removeMember.htm?id=${member.id}">Remove</a></td>
        </tr>
    </c:forEach>
</table>
</c:otherwise>
</c:choose>
<br/><br/>
<form method="post" action="returnAd_Mem.htm">
    <input type="submit" value="Back to Member List">
</form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
