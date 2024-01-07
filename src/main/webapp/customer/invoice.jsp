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
    <title>Invoice</title>
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
</head>
<body>
<table style="border: solid 1px black" id="myTable">
    <tr class="header">
        <th>Customer Name</th>
        <th>House Name</th>
        <th>Day rent</th>
        <th colspan="2">Total Amount</th>
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
