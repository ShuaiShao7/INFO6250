<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home_Page</title>
</head>

    <link rel="stylesheet" href="ss.scss">

<body>
<div class="materialContainer">


<div class="box">

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
            </select>
        </div>

    <div class="button login">
        <button><span>GO</span> <i class="fa fa-check"></i></button>
    </div>

    </form>
<%--    <a href="" class="pass-forgot">Forgot your password?</a>--%>

<%--</div>--%>

<%--<div class="overbox">--%>
<%--    <div class="material-button alt-2"><span class="shape"></span></div>--%>

<%--    <div class="title">REGISTER</div>--%>

<%--    <div class="input">--%>
<%--        <label for="regname">Username</label>--%>
<%--        <input type="text" name="regname" id="regname">--%>
<%--        <span class="spin"></span>--%>
<%--    </div>--%>

<%--    <div class="input">--%>
<%--        <label for="regpass">Password</label>--%>
<%--        <input type="password" name="regpass" id="regpass">--%>
<%--        <span class="spin"></span>--%>
<%--    </div>--%>

<%--    <div class="input">--%>
<%--        <label for="reregpass">Repeat Password</label>--%>
<%--        <input type="password" name="reregpass" id="reregpass">--%>
<%--        <span class="spin"></span>--%>
<%--    </div>--%>

<%--    <div class="button">--%>
<%--        <button><span>NEXT</span></button>--%>
<%--    </div>--%>


</div>

</div>
</body>