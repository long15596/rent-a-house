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
    <link rel="stylesheet" href="cs-login.css">
</head>
<body>
<div class="main">
    <div class="wrapper">
        <form action="#">
            <div class="h5 font-weight-bold text-center mb-3">Registration</div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" placeholder="Name">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-envelope"></span></div>
                <input autocomplete="off" type="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-phone"></span></div>
                <input autocomplete="off" type="tel" class="form-control" placeholder="Phone">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-map-marker-alt"></span></div>
                <input autocomplete="off" type="text" class="form-control" placeholder="Address">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-key"></span></div>
                <input autocomplete="off" type="email" class="form-control" placeholder="Email">
                <div class="icon btn"><span class="fas fa-eye-slash"></span></div>
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="fas fa-key"></span></div>
                <input autocomplete="off" type="email" class="form-control" placeholder="Email">
                <div class="icon btn"><span class="fas fa-eye-slash"></span></div>
            </div>
            <div class="mb-2">
                <label class="option">Visitor
                    <input type="radio" name="role" value="guest" checked>
                    <span class="checkmark"></span>
                </label>

                <label class="option">Owner
                    <input type="radio" name="role" value="host">
                    <span class="checkmark"></span>
                </label>
            </div>
            <div class="btn btn-primary mb-3" style="text-align: center">Sign up</div>
        </form>
    </div>
    <div class="wrapper" >
        <form action="#" style="margin-top: 127px">
            <div class="h5 font-weight-bold text-center mb-3">Login</div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-user"></span></div>
                <input autocomplete="off" type="text" class="form-control" placeholder="Name">
            </div>
            <div class="form-group d-flex align-items-center">
                <div class="icon"><span class="far fa-envelope"></span></div>
                <input autocomplete="off" type="password" class="form-control" placeholder="Password">
            </div>

            <div class="btn btn-primary mb-3" style="text-align: center">Sign In</div>
        </form>
    </div>

</div>
</body>
</html>
