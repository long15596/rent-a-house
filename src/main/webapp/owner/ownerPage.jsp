<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 02/01/2024
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${owner.username} House</h1>
<a href="/owners?action=editInfo&idEdit=${owner.id}">Edit Info</a>
<button><a href="/owners?action=create">Add New</a></button>
<c:forEach items="${ownerHouse}" var="house">
    <table style="border: solid 1px black">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Price</th>
            <th>Room</th>
            <th>Bathroom</th>
            <th>Status</th>
            <th>Describe</th>
            <th>Owner</th>
        </tr>
        <tr>
            <td>${house.id}</td>
            <td>${house.name}</td>
            <td>${house.address}</td>
            <td>${house.price}</td>
            <td>${house.roomNum}</td>
            <td>${house.bathroomNum}</td>
            <td>${house.status}</td>
            <td>${house.describe}</td>
            <td>${house.customer.name}</td>
            <td><a href="/owners?action=edit&idEdit=${house.id}">Edit</a></td>
            <td><a href="/owners?action=deleteHouse&id=${house.id}">Delete</a></td>
        </tr>
    </table>
</c:forEach>
</body>
</html>
