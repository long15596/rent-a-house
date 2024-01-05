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
</head>
<body>
<div class="main-login">
    <form action="" method="post">
        <div><span>User</span><input type="text"  placeholder="Username" name="username"></div>
        <div><span>Pass</span><input type="password"  placeholder="Password" name="password"></div>
        <button>Login</button>
    </form>
    <a href="/home?action=signup">SignUp</a>
</div>
</body>
</html>
