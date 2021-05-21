<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 18.05.2021
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<form:form method="post" modelAttribute="book" action="/admin/books/edit">
    <form:hidden path="id" value="${id}"/>
<%--    <form:hidden path="publisher" value="${publisher}"/>--%>
    <table border="1">
        <tr>
            <th>Edit ISBN:</th>
            <th>Edit title:</th>
            <th>Edit author:</th>
            <th>Edit publisher:</th>
            <th>Edit type:</th>
        </tr>
        <tr>
            <td>
                <form:input path="isbn" value="${isbn}"/>
<%--                <form:errors path="title"/>--%>
            </td>
            <td>
                <form:input path="title" value="${title}"/>
<%--                <form:errors path="description"/>--%>
            </td>
            <td>
                <form:input path="author" value="${author}"/>
<%--                <form:errors path="rating"/>--%>

            </td>
            <td>
                <form:input path="publisher" value="${publisher}" />
<%--                <form:errors path="publisher"/>--%>
            </td>
            <td>
                <form:input path="type" value="${type}" />
                    <%--                <form:errors path="publisher"/>--%>
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit">Confirm</button>
            </td>
        </tr>
    </table>
</form:form>


</body>
</html>
