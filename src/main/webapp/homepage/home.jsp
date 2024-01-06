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
        * {
            margin: 0;
            left: 0;
            box-sizing: border-box;
        }

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
            object-fit: cover;
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
            top: 45%;
            left: 200px;
            width: 400px;
            height: 350px;
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
            font-size: 15px;

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


        header {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 30px 100px;
            z-index: 1000;
        }
        .nav{
            display: flex;
            margin-left: 290px;
        }
        .logo{
            font-size: 40px;
            color: white;
            letter-spacing: 1px;
            font-weight: 800;
        }
        .nav li {
            list-style: none;
            margin: 0 10px;
        }

        .nav li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: 0.3s;
        }

        .nav li:hover a {
            color: blue;
        }

        .search {
            position: relative;
            width: 300px;
            height: 40px;
        }

        .search input {
            position: absolute;
            left: 0;
            width: 100%;
            height: 100%;
            color: black;
            background: transparent;
            border:  rgba(255, 255, 255, 0.5);
            outline: none;
            border-radius: 4px;
            padding: 0 10px 0 45px;
        !important;
            backdrop-filter: blur(10px);
        }

        .search input::placeholder {
            color: black;
        }

        .search svg {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            left: 10px;
            padding-right: 10px;
            color: white;
            border-right: 1px solid floralwhite;
        }
        .content ul li{
            margin: 20px 0;
        }
    </style>
</head>
<body>
<header>
    <div class="main"></div>
    <div class="nav">
        <li><a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" class="bi bi-house-door" viewBox="0 0 16 16">
                <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4z"/>
            </svg>
        </a></li>
        <li><a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" class="bi bi-instagram" viewBox="0 0 16 16">
                <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.9 3.9 0 0 0-1.417.923A3.9 3.9 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.9 3.9 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.9 3.9 0 0 0-.923-1.417A3.9 3.9 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599s.453.546.598.92c.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.5 2.5 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.5 2.5 0 0 1-.92-.598 2.5 2.5 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233s.008-2.388.046-3.231c.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92s.546-.453.92-.598c.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92m-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217m0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334"/>
            </svg>
        </a></li>
        <li><a href="#">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" class="bi bi-cloud" viewBox="0 0 16 16">
                <path d="M4.406 3.342A5.53 5.53 0 0 1 8 2c2.69 0 4.923 2 5.166 4.579C14.758 6.804 16 8.137 16 9.773 16 11.569 14.502 13 12.687 13H3.781C1.708 13 0 11.366 0 9.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383m.653.757c-.757.653-1.153 1.44-1.153 2.056v.448l-.445.049C2.064 6.805 1 7.952 1 9.318 1 10.785 2.23 12 3.781 12h8.906C13.98 12 15 10.988 15 9.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 4.825 10.328 3 8 3a4.53 4.53 0 0 0-2.941 1.1z"/>
            </svg>
        </a></li>
    </div>
    <div class="search">
        <input type="text" placeholder="Search..." style="border: solid 1px black">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" class="bi bi-search" viewBox="0 0 16 16">
            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
        </svg>
    </div>
    </div>
</header>
<div id="container"  style="">
    <div id="slide">
        <c:forEach items="${emptyHouse}" var="house">
            <div class="item" style="background-image: url(${house.describe})">
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