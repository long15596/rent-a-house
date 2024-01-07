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
<h2>CUSTOMER : ${customer.username}</h2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
<table id="myTable" border="solid 1px black">
    <tr class="header">
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Price</th>
        <th>Room</th>
        <th>Bathroom</th>
        <th>Status</th>
        <th>Describe</th>
        <th colspan="2">Owner</th>
    </tr>

    <c:forEach items="${emptyHouse}" var="house">
        <tr>
            <td>${house.id}</td>
            <td>${house.name}</td>
            <td>${house.address}</td>
            <td>${house.price}</td>
            <td>${house.roomNum}</td>
            <td>${house.bathroomNum}</td>
            <td>${house.status}</td>
            <td><img src="${house.describe}" style="width: 80px;height: 100px"> </td>
            <td>${house.customer.name}</td>
            <td><a href="/customers?action=rent&id=${house.id}">Rent</a></td>
        </tr>
    </c:forEach>
</table>

<script>
    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("myTable");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>

</body>
</html>
