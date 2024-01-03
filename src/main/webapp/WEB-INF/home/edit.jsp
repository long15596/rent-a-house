<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/3/2024
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-9">
            <h2>Edit Hoc Sinh</h2>
            <form method="post">
                <input type="text" name="name" value="${customer.name}">
                <input type="text" name="username" value="${customer.username}">
                <input type="text" name="username" value="${customer.password}">
                <input type="text" name="username" value="${customer.phone}">
                <input type="text" name="username" value="${customer.role}">
                <input type="text" name="username" value="${customer.avt}">
                <select name="classId">
                    <c:forEach items="${customer}" var="ctm">
                        <option value="${cl.id}">${ctm.name},${ctm.username},${ctm.password},${ctm.phone}, ${ctm.role}, ${ctm.avt}</option>
                    </c:forEach>
                </select>
                <button>EDIT STUDENT</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
