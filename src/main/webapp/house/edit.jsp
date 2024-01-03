<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 03/01/2024
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <input type="number" id="id" name="id" value="${editHouse.id}">
    <input type="text" id="name" name="name" value="${editHouse.name}">
    <input type="text" id="address" name="address" value="${editHouse.address}">
    <input type="number" id="price" name="price" value="${editHouse.price}">
    <input type="number" id="roomNum" name="roomNum" value="${editHouse.roomNum}">
    <input type="number" id="bathroomNum" name="bathroomNum" value="${editHouse.bathroomNum}">
    <input type="text" id="status" name="status" value="${editHouse.status}">
    <input type="text" id="describe" name="describe" value="${editHouse.describe}">
    <button>EDIT</button>
</form>
</body>
</html>
