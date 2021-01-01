<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/12/13
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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
        background-image: url("https://image.freepik.com/free-photo/office-lifestyle-sport-room-gym-nature_1339-3189.jpg");
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
<h1>Member with id Reviewing : ${existingmember.id} </h1>

<br/>
<div>
Review: (Less than 200 words)<br/>
<form:form method="post" modelAttribute="existingmember" action="updateMemberReview.htm">
    <form:hidden path="id" />
    <form:hidden path="fName" />
    <form:hidden path="lName"/>
    <form:hidden path="street"/>
    <form:hidden path="city"/>
    <form:hidden path="state"/>
    <form:hidden path="zip"/>
    <form:hidden path="uName"/>
    <form:hidden path="password"/><br/>
<%--    <form:hidden path="date"/><br/>--%>

    <form:textarea cssStyle="resize: both" rows="20" cols="70" path="review" />
</div>
<br/>
<div>
    Rate:
    <form:select path="rate">
        <form:option value="5"/>
        <form:option value="4"/>
        <form:option value="3"/>
        <form:option value="2"/>
        <form:option value="1"/>
    </form:select>
    </div>

    <br/>
    <input type="submit" value="Submit Review" />
</form:form>
<br/>
<br/><br/>
<form:form method="post" modelAttribute="existingmember" action="returnMem.htm?id=${existingmember.id}">
    <input type="submit" value="Back to Member Page">
</form:form>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
