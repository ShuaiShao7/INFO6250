<%--
  Created by IntelliJ IDEA.
  User: sshao
  Date: 2020/11/20
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Home</title>--%>
<%--</head>--%>
<%--<link rel="stylesheet" href="ss2.scss">--%>

<%--<style>--%>
<%--    body {--%>
<%--        text-align: center;--%>
<%--    }--%>
<%--    table{--%>
<%--        margin-left: auto;--%>
<%--        margin-right: auto;--%>
<%--    }--%>
<%--    form {--%>
<%--        display: inline-block;--%>
<%--    }--%>
<%--</style>--%>
<%--<body>--%>
<%--<h1 align="center">Welcome to Fitness Gym Management System</h1>--%>
<%--<form action="admin.htm" method="get">--%>
<%--    <h3 align="center">Admin Login:</h3>--%>
<%--    <table border="1">--%>
<%--        <tr>--%>
<%--            <th><label> Admin ID </label></th>--%>
<%--            <td><input type="number" name= "id"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th><label> Admin Password </label></th>--%>
<%--            <td><input type="text" name= "password"></td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--    <input align ="center" type="submit" value="Submit" >--%>
<%--</form>--%>

<%--<br/>--%>

<%--<form action="supLogin.htm" method="get">--%>
<%--    <h3 align="center">Supervisor Login:</h3>--%>
<%--    <table border="1">--%>
<%--        <tr>--%>
<%--            <th><label> Supervisor ID </label></th>--%>
<%--            <td><input type="number" name= "id"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <th><label> Supervisor Password </label></th>--%>
<%--            <td><input type="text" name= "password"></td>--%>
<%--        </tr>--%>
<%--        &lt;%&ndash;    Supervisor Login(Member): <br/>&ndash;%&gt;--%>
<%--        &lt;%&ndash;    <label> Supervisor ID </label>&ndash;%&gt;--%>
<%--        &lt;%&ndash;    <input type="number" name= "id"><br/><br/>&ndash;%&gt;--%>
<%--        &lt;%&ndash;    <label> Supervisor Password </label>&ndash;%&gt;--%>
<%--        &lt;%&ndash;    <input type="text" name= "password"><br/><br/>&ndash;%&gt;--%>
<%--    </table>--%>
<%--    <input align ="center" type="submit" value="Submit" >--%>
<%--</form>--%>

<%--</body>--%>
<%--</html>--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home_Page</title>
</head>

<link rel="stylesheet" href="ss.scss">

<body>
<div class="materialContainer">


    <div class="box">
        <div><h1>Welcome to Fitness!</h1></div>
        Monday - Sunday : 8:00am - 9:00pm
        <div class="title">LOGIN</div>
        <form action="admin.htm" method="get">

            <div class="input">
                <label for="name">Username</label>
                <input type="text" name="id" id="name">
                <span class="spin"></span>
            </div>

            <div class="input">
                <label for="pass">Password</label>
                <input type="password" name="password" id="pass">
                <span class="spin"></span>
            </div>

            <div>
                Select User:
                <select name="userAccount">
                    <option value="Ad">Administrator</option>
                    <option value="Sup">Supervisor</option>
                    <option value="Member">Member</option>
                    <option value="Supplier">Supplier</option>
                </select>
            </div>

            <div class="button login">
                <button><span>Login</span> <i class="fa fa-check"></i></button>
            </div>
        </form>

        <div>Not a Member?
            <form method="post" action="addMem.htm">
                <input type="submit" value="Register Now!"  />
            </form></div>

        <div>
            <br/>
            <form method="post" action="memReview.htm" >
                <input type="submit" value="View Reviews">
            </form>
        </div>

    </div>


</div>
</body>