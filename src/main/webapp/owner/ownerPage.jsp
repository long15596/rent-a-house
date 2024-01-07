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
<style>
* {
    box-sizing: border-box;
}

#myInput {
    background-image: url(#);
    background-position: 10px 10px;
    background-repeat: no-repeat;
    width: 100%;
    font-size: 16px;
    padding: 12px 20px 12px 40px;
    border: 1px solid #ddd;
    margin-bottom: 12px;
}

#myTable {
    border-collapse: collapse;
    width: 100%;
    border: 1px solid #ddd;
    font-size: 18px;
}

#myTable th, #myTable td {
    text-align: left;
    padding: 12px;
}

#myTable tr {
    border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
    background-color: #f1f1f1;
}
</style>
<body>
<h1>House</h1>
<h2>Owner :${owner.username} </h2>
<button><a href="/owners?action=logout">Logout</a></button>
<button><a href="/owners?action=editInfo&idEdit=${owner.id}">Edit Info</a></button>
<button><a href="/owners?action=create">Add New</a></button>
<c:forEach items="${ownerHouse}" var="house">
    <table style="border: solid 1px black" id="myTable">
        <tr class="header">
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
            <td><img src="${house.describe}" style="width: 60px;height: 40px"> </td>
            <td>${house.customer.name}</td>
            <td><a href="/owners?action=edit&idEdit=${house.id}">Edit</a></td>
            <td><a href="/owners?action=deleteHouse&id=${house.id}">Delete</a></td>
        </tr>
    </table>
</c:forEach>
</body>
</html>
