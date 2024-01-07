<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 03/01/2024
  Time: 4:01 PM
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
            <th>Username</th>
            <th>Password</th>
            <th>Phone</th>
            <th>Role</th>
            <th>Avatar</th>
        </tr>
        <tr>
            <td><input type="text" id="name" name="name" value="${editCustomer.name}"></td>
            <td><input type="text" id="address" name="username" value="${editCustomer.username}"></td>
            <td><input type="text" id="price" name="password" value="${editCustomer.password}"></td>
            <td><input type="number" id="phone" name="phone" value="${editCustomer.phone}"></td>
            <td><input type="text" id="role" name="role" value="${editCustomer.role}"></td>
            <td><input type="text" id="avt" name="avt" value="${editCustomer.avt}"></td>
        </tr>
    </table>
    <button>EDIT</button>
</form>
</body>
</html>
