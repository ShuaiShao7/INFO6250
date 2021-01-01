<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/21
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<html>

<script type="text/javascript" src="../script/jquery-1.7.2.js"></script>
<script type="text/javascript">

    $(function (){
        $("#uName").click(function ()
        {
            // alert("jquery");
            $("#td1").show();
            $("#td1").css("background", "#ff0000");
        });
    }) ;

    $(function (){
        $("#password").click(function ()
        {
            // alert("jquery");
            $("#td2").show();
            $("#td2").css("background", "#ff0000");
        });
    }) ;
</script>

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
    /*span{*/
    /*    display: none;*/
    /*}*/
    #td1{
        display: none;
    }
    #td2{
        display: none;
    }
</style>
<body>
<h1> Register now as new Member! </h1>
<form:form method="post" modelAttribute="newMem" action="addMem2.htm">
    <form:hidden path="id" />
    <table align="center">
    <tr>
        <td>FirstName : <form:input path="fName" /></td>
    </tr>
    <tr>
        <td>LastName :<form:input path="lName"/></td>
    </tr>
        <tr>
            <td>Street:<form:input path="street"/></td>
        </tr>
        <tr>
            <td>City:<form:input path="city"/></td>
        </tr>
        <tr>
            <td>State:<form:input path="state"/></td>
        </tr>
        <tr>
            <td>Zip:<form:input path="zip"/></td>
        </tr>
    <tr>
        <td>UserName:<form:input path="uName"/>
    </tr>
        <tr>
            <td id="td1">UserName must start with alphabet<br/>UserName must have numbers<br/>UserName length must be between 6 and 15</td>
        </tr>
        <tr>
            <td>Password:<form:input path="password"/></td>
        </tr>
        <tr>
            <td id="td2">Password must have alphabet and numbers<br/>Password length must be between 8 and 20</td>
        </tr>

    </table>
<%--    <form:hidden path="sid"/>--%>
<%--    <form:hidden path="" value="${newMem.supervisor.id}"/>--%>
    <br/>
    <input type="submit" value="Register!" />
</form:form>


<%--<br/><br/>--%>
<%--<form method="post" action="returnAd_Mem.htm">--%>
<%--    <input type="submit" value="Back to Member List">--%>
<%--</form>--%>
<br/><br/>
<form method="post" action="returnHome.htm">
    <input type="submit" value="Back to Home Page">
</form>
</body>
</html>
