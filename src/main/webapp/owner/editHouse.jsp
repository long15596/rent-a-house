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
    <table>
        <tr>
            <th>Name</th>
            <th>Address</th>
            <th>Price</th>
            <th>Room</th>
            <th>Bathroom</th>
            <th>Status</th>
            <th>Describe</th>
        </tr>
        <tr>
            <td><input type="text" id="name" name="name" value="${editHouse.name}"></td>
            <td><input type="text" id="address" name="address" value="${editHouse.address}"></td>
            <td><input type="number" id="price" name="price" value="${editHouse.price}"></td>
            <td><input type="number" id="roomNum" name="roomNum" value="${editHouse.roomNum}"></td>
            <td><input type="number" id="bathroomNum" name="bathroomNum" value="${editHouse.bathroomNum}"></td>
            <td><input type="text" id="status" name="status" value="${editHouse.status}"></td>
            <td><input type="text" id="describe" name="describe" value="${editHouse.describe}"></td>
        </tr>
    </table>
    <button>Edit</button>
</form>
</body>
</html>
