<%@ page import="model.Item" %>
<%@ page import="db.DBUtill" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="header-style.css">
</head>
<body>

<%
    String idStr = request.getParameter("id");
    Item item = DBUtill.findById(Long.parseLong(idStr));
%>
<section class="edit">
    <form action="editbutton" method="post" class="edit__content">
        <input name="id" type="hidden" value="<%=item.getId()%>">
        <input type="text" name = "title" value="<%=item.getTitle()%>">
        <input type="text" name = "desc" value="<%=item.getDescription()%>">
        <input type="submit" value="Save" id="save__btn">
    </form>
</section>


</body>
</html>
