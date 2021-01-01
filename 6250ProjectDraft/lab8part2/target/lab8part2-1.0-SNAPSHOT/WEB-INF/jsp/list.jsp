<%-- 
    Document   : list
    Created on : Nov 7, 2020, 5:44:20 AM
    Author     : Surya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Todo List</title>
    </head>
    <body>
        <h1>List of Todos</h1>
        
        <c:if test="${empty todos}">
            <strong>Empty</strong>
        </c:if>
        
        <ul>
            <c:forEach var="todo" items="${todos}">
                <li>
                    ${todo.name}
                    <a href="updatetodo.htm?id=${todo.todoId}">Update</a>
                    <a href="removetodo.htm?id=${todo.todoId}">Remove</a>
                </li>
            </c:forEach>
        </ul>
        <div>
            <h1> Add a new todo </h1>
            <form:form method="post" modelAttribute="newtodo">
                <form:hidden path="todoId" />
                Todo : <form:input path="name" /><br /><br />
                <input type="submit" value="Add Todo" />
            </form:form>
        </div>
    </ul>
</body>
</html>
