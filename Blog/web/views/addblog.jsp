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
        <div class="col-sm-8 offset-2">
            <form action="/act" method="post">
                <input type="hidden" name="reaction" value="addblog">
                <div class="form-group">
                    <label>
                        TITLE:
                    </label>
                    <input type="text" class="form-control" name="title">
                </div>
                <div class="form-group">
                    <label>
                        SHORT CONTENT:
                    </label>
                    <textarea class="form-control" style="width: 100%;" rows="3" name="short_content"></textarea>
                </div>
                <div class="form-group">
                    <label>
                        CONTENT:
                    </label>
                    <textarea class="form-control" style="width: 100%;" rows="6" name="content"></textarea>
                </div>
                <div class="form-group">
                    <button class="btn btn-success">ADD BLOG</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
