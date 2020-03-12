<%@ page import="java.util.ArrayList" %>
<%@ page import="nargiza.kz.models.Car" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="menu.jsp"%>
<div class="container mt-3">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Model</th>
            <th scope="col">Year</th>
            <th scope="col">Price</th>
        </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Car> cars = (ArrayList<Car>)request.getAttribute("cars");
            if (cars != null){
                for(Car car: cars){
        %>
            <tr>
                <th scope="row"><%=car.getId()%></th>
                <td><%=car.getName()%></td>
                <td><%=car.getModel()%></td>
                <td><%=car.getYear()%></td>
                <td><%=car.getPrice()%></td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
