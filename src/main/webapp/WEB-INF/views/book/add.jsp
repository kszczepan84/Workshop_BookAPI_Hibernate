<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 18.05.2021
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>
<form:form method="post" modelAttribute="book">
    <table border="1">
        <tr>
            <th>Enter ISBN:</th>
            <th>Enter title:</th>
            <th>Enter author:</th>
            <th>Enter publisher:</th>
            <th>Enter type:</th>
        </tr>
        <tr>
            <td>
                <label>
                    <form:input path="isbn"/>
<%--                    <form:errors path="publisher"/>--%>
                </label>
            </td>
            <td>
                <label>
                    <form:input path="title" />
<%--                    <form:errors path="authors"/>--%>
                </label>
            </td>

            <td>
                <label>
                    <form:input path="author"/>
<%--                    <form:errors path="title"/>--%>
                </label>
            </td>
            <td>
                <label>
                    <form:input path="publisher"/>
<%--                    <form:errors path="description"/>--%>
                </label>
            </td>
            <td>
                <label>
                    <form:input path="type"/>
<%--                    <form:errors path="rating"/>--%>
                </label>
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit"> Confirm </button>
            </td>
        </tr>

    </table>
</form:form>
</body>
</html>
