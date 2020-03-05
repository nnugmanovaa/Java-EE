<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 05.03.2020
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="/login" method="post">
    <input type="text" placeholder="Enter the  username" name="login">
    <input type="password" placeholder="Enter the password" name="password">
    <input type="submit" value="Sign in">
</form>
</body>
</html>
