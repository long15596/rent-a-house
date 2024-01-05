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
<h1>${owner.name} House</h1>
<button><a href="/owners?action=create">Add New</a></button>
<c:forEach items="${ownerHouse}" var="house">
    <h1>${house.id}</h1>
    <h1>${house.name}</h1>
    <h1>${house.address}</h1>
    <h1>${house.price}</h1>
    <h1>${house.roomNum}</h1>
    <h1>${house.bathroomNum}</h1>
    <h1>${house.status}</h1>
    <h1>${house.describe}</h1>
    <h1>${house.customer.id}</h1>
    <button><a href="/owners?action=edit&id=${house.id}">Edit</a></button>
    <button><a href="/owners?action=delete&id=${house.id}">Delete</a></button>
</c:forEach>
</body>
</html>