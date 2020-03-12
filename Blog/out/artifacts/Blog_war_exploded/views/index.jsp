<%@ page import="nargiza.kz.models.User" %>
<%@ page import="nargiza.kz.models.Blog" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="link.jsp"%>
</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container mt-3">
        <div class="row">
            <div class="col-sm-12">
                <%
                    ArrayList<Blog> blogs = (ArrayList<Blog>)request.getAttribute("blogs");
                    if(blogs!=null){
                        for(Blog b : blogs){
                %>
                <div class="jumbotron">
                    <h1 class="display-4"><%=b.getTitle()%></h1>
                    <p class="lead"><%=b.getShortContent()%></p>
                    <hr class="my-4">
                    <p><%=b.getContent()%></p>
                    <b>
                        Posted by <%=b.getAuthor().getFullName()%> at <%=b.getPostDate()%>
                    </b>
                    <br>
                    <br>
                    <a class="btn btn-primary" href="#" role="button">Read more</a>
                </div>
                <%
                        }
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>
