<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 18.05.2021
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Id</th>
        <th>ISBN</th>
        <th>Title</th>
        <th>Author</th>
        <th>Publisher</th>
        <th>Type</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${books}" var="book">
        <tr>
            <td> ${book.id}</td>
            <td> ${book.isbn}</td>
            <td> ${book.title}</td>
            <td> ${book.author}</td>
            <td> ${book.publisher}</td>
            <td> ${book.type}</td>
            <td><a href="<c:url value="/admin/books/delete/${book.id}"/>" onclick="return confirm('Are you sure?')">Delete</a>
                <a href="<c:url value="/admin/books/edit/${book.id}"/>">Edit</a>
<%--                <a href="<c:url value="/admin/books/add"/>">Add</a>--%>
                <a href="<c:url value="/admin/books/show/${book.id}"/>">Show</a>
            </td>

        </tr>

    </c:forEach>

</table>
<br>
<a href="<c:url value="/admin/books/add"/>">Add</a>

</body>
</html>
