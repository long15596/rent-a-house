<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 06/01/2024
  Time: 11:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${customer.username}</h1>
<button><a href="/customers?action=logout">Logout</a></button>
<button><a href="/customers?action=editInfo&id=${customer.id}">Edit Info</a></button>
<label> Room
    <select>
        <c:forEach items="${roomType}" var="roomNum">
            <option><a href="/customers?action=showRoomType&roomNum=${roomNum}">${roomNum}</a></option>
        </c:forEach>
    </select>
</label>
<label> Bathroom
    <select>
        <c:forEach items="${roomType}" var="roomNum">
            <option><a href="/customers?action=showRoomType&roomNum=${roomNum}">${roomNum}</a></option>
        </c:forEach>
    </select>
</label>
<c:forEach items="${emptyHouse}" var="house">
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
            <td><a href="/customers?action=rent&id=${house.id}">Rent</a></td>
        </tr>
    </table>
</c:forEach>
</body>
</html>
