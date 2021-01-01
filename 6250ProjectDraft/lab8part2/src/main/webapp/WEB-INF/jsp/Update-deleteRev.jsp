<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/12/14
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Reviews</title>
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

</head>
<h1 align="center">Member Reviews</h1>
<c:choose>
    <c:when test="${requestScope.revAvg==0}">
        <h1>No Reviews by now</h1>
    </c:when>

    <c:otherwise>

<br/>
<table border="1" align="center">
    <tr>
        <th>Name</th>
        <th>Review</th>
        <th>Delete</th>

    </tr>
    <c:forEach var="member" items="${requestScope.reviewList}">
        <tr>
            <td>${member.fName} ${member.lName}</td>
            <td><label>
                <textarea rows="10" cols="40">${member.review}</textarea>
            </label></td>
            <td><a href="removeRev.htm?id=${member.id}">Remove</a></td>


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
</html>
