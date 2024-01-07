<%--
Created by IntelliJ IDEA.
User: lyngo
Date: 04/01/2024
Time: 10:59 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <style>/* Importing fonts from Google */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

    /* Reseting */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        min-height: 100vh;
        background: linear-gradient(to bottom, #000428, #004683);
    }

    .wrapper {
        max-width: 450px;
        margin: 50px 10px; /* thay đổi margin cho giữa các form */
        padding: 20px 30px;
        min-height: 300px;
        background-color: #ffffff27;
        border-top: 1px solid #ffffff6e;
        border-left: 1px solid #ffffff6e;
        border-radius: 15px;
        height: 500px;
    }

    .wrapper .h5 {
        color: #ddd;
    }

    .wrapper .form-group {
        border-bottom: 1px solid #ccc;
        margin-bottom: 1.5rem;
    }

    .wrapper .form-group:hover {
        border-bottom: 1px solid #eee;
    }

    .wrapper .form-group .icon {
        color: #e8e8e8;
    }

    .wrapper .form-group .form-control {
        background: inherit;
        border: none;
        width: 100%;
        border-radius: 0px;
        box-shadow: none;
        color: #e9e9e9;
    }

    .wrapper .form-group input::placeholder {
        color: #ccc;
    }

    .wrapper .form-group input:focus::placeholder {
        opacity: 0;
    }


    .wrapper .option input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
        height: 0;
        width: 0
    }


    .wrapper .btn.btn-primary {
        position: relative;
        color: #eee;
        padding: 0.3rem 1rem;
        border-radius: 20px;
        border: 1px solid #ddd;
        background-color: inherit;
        box-shadow: none;
        overflow: hidden;
    }

    .wrapper .btn.btn-primary:hover {
        background-color: #b4b4b433;
        color: #fff;
    }

    .wrapper .terms a {
        text-decoration: none;
        color: #eee;
    }

    .wrapper .terms a:hover {
        color: #fff;
    }


    .wrapper .social-links li a {
        font-size: 1.2rem;
        width: 50px;
        height: 50px;
        background-color: #ffffff17;
        border: 1px solid #ffffff66;
        border-right: 1px solid #ffffff33;
        border-bottom: 1px solid #ffffff33;
        display: flex;
        text-decoration: none;
        justify-content: center;
        align-items: center;
        color: #fff;
        border-radius: 6px;
        box-shadow: 0 5px 30px #004683e0;
        transition: 0.5s;
        overflow: hidden;
    }

    .wrapper .social-links li a:hover {
        transform: translateY(-20px);
    }



    @media(max-width: 460px) {
        .wrapper {
            margin: 15px;
            padding: 20px;
        }


    }

    @media(max-width: 345px) {
        .wrapper .connect::after {
            left: 32%;
        }
    }
    .main{
        display: flex;
        justify-content: center;
    }
    </style>
</head>
<body>
<div class="main">

    <div class="wrapper" >
        <form action="" style="margin-top: 127px" method="post">
            <div class="h5 font-weight-bold text-center mb-3"><h1>Login</h1></div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" placeholder="Name" name="username">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-envelope"></span></div>
                <input autocomplete="off" type="password" class="form-control" placeholder="Password" name="password">
            </div>
            <button class="btn btn-primary mb-3" style="text-align: center;width: 100%;margin-top: 20px">Sign In</button>
        </form>
    </div>
</div>
</body>
</html>
