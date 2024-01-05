<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 03/01/2024
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <td><input type="text" id="name" name="name"></td>
            <td><input type="text" id="address" name="address"></td>
            <td><input type="number" id="price" name="price"></td>
            <td><input type="number" id="roomNum" name="roomNum"></td>
            <td><input type="number" id="bathroomNum" name="bathroomNum"></td>
            <td><input type="text" id="status" name="status"></td>
            <td><input type="text" id="describe" name="describe"></td>
        </tr>
    </table>
    <button>ADD NEW</button>
</form>
</body>
</html>
