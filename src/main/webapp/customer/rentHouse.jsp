<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 06/01/2024
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${customer.username}</h1>
<form action="" method="post">
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
            <th>Day</th>
        </tr>
        <tr>
            <td>${rentHouse.id}</td>
            <td>${rentHouse.name}</td>
            <td>${rentHouse.address}</td>
            <td>${rentHouse.price}</td>
            <td>${rentHouse.roomNum}</td>
            <td>${rentHouse.bathroomNum}</td>
            <td>${rentHouse.status}</td>
            <td>${rentHouse.describe}</td>
            <td>${rentHouse.customer.name}</td>
            <td><input type="number" id="id" name="time"></td>
            <td><a href="/house?action=rent&id=${rentHouse.id}">Rent</a></td>
        </tr>
    </table>
</form>
</body>
</html>
