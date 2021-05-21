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

    </tr>
    <tr>
        <td><c:out value="${book.id}"/></td>
        <td><c:out value="${book.isbn}"/></td>
        <td><c:out value="${book.title}"/></td>
        <td><c:out value="${book.author}"/></td>
        <td><c:out value="${book.publisher}"/></td>
        <td><c:out value="${book.type}"/></td>
    </tr>
</table>
<br>
<a href="<c:url value="/admin/books/list"/>">Back to list</a>


</body>
</html>
