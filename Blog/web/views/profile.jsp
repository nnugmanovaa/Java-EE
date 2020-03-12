<%@ page import="nargiza.kz.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="link.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<h1>Welcome <%=user.getFullName()%></h1>
</body>
</html>
