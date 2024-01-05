<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 05/01/2024
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/home?action=login">Login</a>
<a href="/home?action=signup">SignUp</a>
<h1>Danh sách Nhà Hoạt Động</h1>
<c:forEach items="${emptyHouse}" var="house">
    <h1>${house.id}</h1>
    <h1>${house.name}</h1>
    <h1>${house.address}</h1>
    <h1>${house.price}</h1>
    <h1>${house.roomNum}</h1>
    <h1>${house.bathroomNum}</h1>
    <h1>${house.status}</h1>
    <h1>${house.describe}</h1>
    <button><a href="/home?action=login">Thuê Nhà</a></button>
</c:forEach>
</body>
</html>
