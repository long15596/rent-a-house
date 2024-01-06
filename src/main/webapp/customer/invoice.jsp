<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 06/01/2024
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table style="border: solid 1px black">
        <tr>
            <th>Customer Name</th>
            <th>House Name</th>
            <th>Day rent</th>
            <th>Total Amount</th>
        </tr>
        <tr>
            <td>${invoice.customer.name}</td>
            <td>${invoice.house.name}</td>
            <td>${invoice.time}</td>
            <td>${invoice.totalAmount}</td>
            <td><a href="/house?action=pay&id=${invoice.id}">Pay</a></td>
        </tr>
    </table>
</body>
</html>
