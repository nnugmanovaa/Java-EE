<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="menu.jsp"%>
<div class="container mt-3">
    <div class="row">
        <div class="col-6 offset-3">
            <%
                String success  =request.getParameter("success");
                if(success != null && success.equals("1")){

            %>
            <div class="alert alert-success" role="alert">
                Car added successfully!
            </div>
            <%
                }
            %>
            <form action="/" method="post">
                <input type="hidden" name="act" value="add_car">
                <div class="row mt-2">
                    <div class="col-4">
                        <label>NAME :</label>
                    </div>
                    <div class="col-8">
                        <input type="text" class="form-control" name="car_name">
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-4">
                        <label>MODEL :</label>
                    </div>
                    <div class="col-8">
                        <input type="text" class="form-control" name="car_model">
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-4">
                        <label>YEAR :</label>
                    </div>
                    <div class="col-8">
                        <input type="number" class="form-control" name="car_year">
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-4">
                        <label>PRICE :</label>
                    </div>
                    <div class="col-8">
                        <input type="number" class="form-control" name="car_price">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button class="btn btn-success float-right">ADD CAR</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
