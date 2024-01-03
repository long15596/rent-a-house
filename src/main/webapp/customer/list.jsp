<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 03/01/2024
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button><a href="/customers?action=create">Add New</a></button>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Username</th>
        <th>Password</th>
        <th>Phone</th>
        <th>Role</th>
        <th>Avatar</th>
    </tr>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.username}</td>
            <td>${customer.password}</td>
            <td>${customer.phone}</td>
            <td>${customer.role}</td>
            <td>${customer.avt}</td>
            <td><button><a href="/customers?action=edit&id=${customer.id}">Edit</a></button></td>
            <td><button><a href="/customers?action=delete&id=${customer.id}">Delete</a></button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
