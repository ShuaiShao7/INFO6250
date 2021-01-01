<%-- 
    Document   : todo
    Created on : Nov 7, 2020, 6:49:48 AM
    Author     : Surya
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Todo</title>
    </head>
    <body>
        <h1>Update todo with id : ${existingtodo.todoId} </h1>
        
        <form:form method="post" modelAttribute="existingtodo">
            <form:hidden path="todoId" />
            Todo : <form:input path="name" /><br /><br />
            <input type="submit" value="Update Todo" />
        </form:form>
    </body>
</html>
