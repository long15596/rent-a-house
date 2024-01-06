<%--
  Created by IntelliJ IDEA.
  User: lyngo
  Date: 05/01/2024
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="gallery.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<html>
<head>
    <title>Title</title>
    <style>
        body {
            background-color: #eaeaea;
            overflow: hidden;
        }
        .container {

            position: relative;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            width: 1400px;
            height: 600px;
            padding: 50px;
            background-color: #f5f5f5;
            box-shadow: 0 30px 50px rgba(0, 0, 0, 0);
        }
        #slide {
            width: max-content;
            margin-top: 50px;
        }

        .item {
            width: 200px;
            height: 300px;
            background-position: 50%, 50%;
            display: block;
            transition: 0.5s;
            background-size: cover;
            position: absolute;
            z-index: 1;
            top: 50%;
            transform: translate(0, -50%);
            border-radius: 10px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.4);
        }

        .item:nth-child(1), .item:nth-child(2) {
            left: 0;
            top: 0;
            transform: translate(0, 0);
            border-radius: 0;
            width: 100%;
            height: 100%;
            box-shadow: none;
        }

        .item:nth-child(3) {
            left: 50%;
        }

        .item:nth-child(4) {
            left: calc(50% + 220px);
        }

        .item:nth-child(5) {
            left: calc(50% + 440px);
        }

        .item:nth-child(n+6) {
            left: calc(50% + 660px);
            opacity: 0;
        }

        .item .content {
            position: absolute;
            top: 50%;
            left: 200px;
            width: 380px;
            text-align: left;
            padding: 0;
            color: black;
            transform: translate(0, -50%);
            display: none;
            font-family: system-ui;
        }

        .content .name {
            color: black;
        }

        .item:nth-child(2) .content {
            display: block;
            z-index: 10000;
        }

        .item .name {
            font-size: 40px;
            font-weight: bold;
            opacity: 0;
            animation: showcontent 1s ease-in-out 1 forwards;
        }

        .item .des {
            margin: 10px 0;
            opacity: 0;
            animation: showcontent 1s ease-in-out 0.3s forwards;
            color: black;;

        }

        .item button {
            padding: 10px 20px;
            border: none;
            opacity: 0;
            animation: showcontent 1s ease-in-out 0.6s forwards;

        }

        @keyframes showcontent {
            from {
                opacity: 0;
                transform: translate(0, 100px);
                filter: blur(33px);
            }
            to {
                opacity: 1;
                transform: translate(0, 0);
                filter: blur(0px);
            }
        }

        .buttons {
            position: absolute;
            bottom: 30px;
            z-index: 20000;
            text-align: center;
            width: 100%;
        }

        .buttons button {
            width: 100px;
            height: 30px;
            border: 1px solid #555;
            transition: 0.5s;
            font-family: sans-serif;
        }

        .buttons button:hover {
            background-color: rgba(0, 0, 0, 0.9);
            color: #eaeaea;
            font-family: sans-serif;
        }

        body {
            background-color: #eaeaea;
            overflow: hidden;
        }

        .search {
            top: 0;
            right: 0;
            z-index: 10000;
            position: absolute;
            opacity: 0.05;
        }
        .search:hover{
            opacity: 1;
        }
        .navbar .ip-search {
            border: 1px solid white;
            width: 200px;
            height: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<div class="search">
    <input type="text" class="ip-search">
</div>
<div id="container"  style="">
    <div id="slide">
        <c:forEach items="${emptyHouse}" var="house">
            <div class="item" style="background-image: url(#)">
                <div class="content">
                    <div class="name">Empty House</div>
                    <div class="des">
                        <ul>
                            <li><h3>RoomName :${house.name}</h3></li>
                            <li><h3>Address :${house.address}</h3></li>
                            <li><h3>Room :${house.roomNum}</h3></li>
                            <li><h3>Bathroom:${house.bathroomNum}</h3></li>
                            <li><h3>Status:${house.status}</h3></li>
                            <li><h1>Price :${house.price}</h1></li>
                            <br>
                        </ul>
                    </div>
                    <button onclick="showBookingForm()" style="font-size:19px">Đặt phòng ngay</button>
                    <form class="bookingForm" style="display:none;">
                        <label for="checkInTime">Thời gian check-in:</label>
                        <input type="time" id="checkInTime" name="checkInTime">
                        <button type="submit">Xác nhận</button>
                        <button type="button" onclick="cancelBooking()">Hủy</button>
                    </form>
                </div>
            </div>
        </c:forEach>
        <div class="buttons">
            <button id="pre"><i class="fa-solid fa-left"></i>Previous</button>
            <button id="next"><i class="fa-solid fa-right">Next</i></button>
        </div>
    </div>
</div>
<script>
    document.getElementById('next').onclick = function (){
        let list = document.querySelectorAll('.item');
        document.getElementById('slide').appendChild(list[0])
    }
    document.getElementById('pre').onclick = function () {
        let list = document.querySelectorAll('.item');
        document.getElementById('slide').prepend(list[list.length-1])
    }
    function showBookingForm() {
        var forms = document.querySelectorAll(".bookingForm");
        forms.forEach(function(form) {
            form.style.display = "block";
        });
    }

    function cancelBooking() {
        var forms = document.querySelectorAll(".bookingForm");
        forms.forEach(function(form) {
            form.style.display = "none";
        });
    }

</script>
</body>
</html>