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
<h1>${customer.username}</h1>
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
            <th colspan>Owner</th>
            <th colspan="2">Day</th>
        </tr>
        <tr>
            <td>${rentHouse.id}</td>
            <td>${rentHouse.name}</td>
            <td>${rentHouse.address}</td>
            <td>${rentHouse.price}</td>
            <td>${rentHouse.roomNum}</td>
            <td>${rentHouse.bathroomNum}</td>
            <td>${rentHouse.status}</td>
            <td><img src="${rentHouse.describe} "style="width: 80px;height: 100px"></td>
            <td>${rentHouse.customer.username}</td>
            <td><input type="number" id="time" name="time"></td>
            <td><a href="/house?action=rent&id=${rentHouse.id}">Rent</a></td>
        </tr>
    </table>
</body>
</html>
