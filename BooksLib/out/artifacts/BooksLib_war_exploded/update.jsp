<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 25.02.2020
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
    <link href="style.css" rel="stylesheet">
</head>
<body>
<form action="savebook" method="post" class="update__book">
    <%request.getAttribute("book");%>
    <input type="text" value="${book.title}" name="title" required>
    <input type="text" value="${book.author}" name="author" required>
    <input type="number" value="${book.year}" name="year" required>
    <input type="hidden" value="${book.id}" name = "id">
    <input id="add" type="submit" value="Save">
</form>
</body>
</html>
