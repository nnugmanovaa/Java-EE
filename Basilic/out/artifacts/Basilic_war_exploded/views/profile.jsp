<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14.03.2020
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="link.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
    <h3>Welcome <%=user.getFullName()%></h3>
</div>
</body>
</html>
