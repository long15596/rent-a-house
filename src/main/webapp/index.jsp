<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        .main-login{
            text-align: center;
            display: flex;
            justify-content: space-around;
            border: solid 1px hotpink;
            margin: auto;
            width: 300px;
            height: 200px;
        }
    </style>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="houses">House</a>
<a href="customers">Customer</a>
<div class="main-login">
    <form action="/login" method="post">
        <div> <span>User</span>  <input type="text"  placeholder="User" name="username"></div>
        <div>  <span>Pass</span> <input type="text"  placeholder="Pass" name="password"></div>
        <button >đăng nhập</button>
    </form>
    <a href="/login?action=signUp">dang ky</a>
</div>
</body>
</html>