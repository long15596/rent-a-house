<%--
  Created by IntelliJ IDEA.
  User: LONG
  Date: 1/5/2024
  Time: 8:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<c:forEach items="${ctm}" var="ct">
  <h1>${ct.name}, ${ct.username}, ${ct.password}, ${ct.phone}, ${ct.role}</h1>
</c:forEach>
</body>
</html>