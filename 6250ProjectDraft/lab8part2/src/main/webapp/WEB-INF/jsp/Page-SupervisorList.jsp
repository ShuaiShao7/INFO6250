<%--
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
        background-image: url("https://image.freepik.com/free-photo/blurred-ping-pong-table_1203-96.jpg");
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

<h1 align="center">SupervisorList</h1>
<br/>
<table border="1" >
    <tr>
        <th>Supervisor_ID</th>
        <th>First_Name</th>
        <th>Last_Name</th>
        <th>Street</th>
        <th>City</th>
        <th>State</th>
        <th>Zip</th>
        <th>Password</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="supervisor" items="${requestScope.superList}">
        <tr>
            <td>${supervisor.id}</td>
            <td>${supervisor.fName}</td>
            <td>${supervisor.lName}</td>
            <td>${supervisor.street}</td>
            <td>${supervisor.city}</td>
            <td>${supervisor.state}</td>
            <td>${supervisor.zip}</td>
            <td>${supervisor.password}</td>
            <td><a href="updateSuper.htm?id=${supervisor.id}">Update</a></td>
            <td><a href="removeSuper.htm?id=${supervisor.id}">Remove</a></td>
        </tr>
    </c:forEach>
</table>

<br/><br/>
<form method="post" action="addSup2.htm">
    <input type="submit" value="Add Supervisor"/>
</form>

<br/><br/>
<form method="post" action="viewSupplier.htm">
    <input type="submit" value="View Supplier">
</form>

<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>


</body>
</html>
