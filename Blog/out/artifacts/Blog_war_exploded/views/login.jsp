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
        <div class="col-sm-6 offset-3">
            <%
                String error = request.getParameter("error");
                if(error!=null){
            %>
            <div class="alert alert-danger" role="alert">
                Incorrect email or password
            </div>
            <%
                }
            %>
            <form action="/act" method="post">
                <input type="hidden" name="reaction" value="sign_in">
                <div class="form-group">
                    <label>
                        EMAIL:
                    </label>
                    <input class="form-control" type="email" name="email" placeholder="Insert email...">
                </div>
                <div class="form-group">
                    <label>
                        PASSWORD:
                    </label>
                    <input class="form-control" type="password" name="password" placeholder="Insert password...">
                </div>
                <div class="form-group">
                    <button class="btn btn-success">SIGN IN</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
