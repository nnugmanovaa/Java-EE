<%@ page import="nargiza.kz.models.Menu" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="nargiza.kz.db.Basket" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/style/basketStyle.css">
    <%@include file="link.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
    <h2 class="basket__head">Basket</h2>

    <section class="container finally">
            <%
                ArrayList<Menu> menus = (ArrayList<Menu>) Basket.getMenus();
                int sum = 0;
                if(menus != null){
                    for(Menu m : menus) {
                        sum += m.getPrice();
                    }

        %>
                <div class="alert alert-success" role="alert">
                    Total sum: <%=sum%> <button class=" order btn btn-success">Order</button>
                </div>
            <%
        }
    %>

<section class="container basket__main">

    <%
       // ArrayList<Menu> menus = (ArrayList<Menu>)request.getAttribute("basketmenu");
        if(menus != null){
            for(int i = 0; i<menus.size(); i++){
    %>
        <div class="basket__inner">
            <div>
                <img src="<%=menus.get(i).getContent()%>" alt="" width="300px" height="200px">
            </div>
            <div>
                <%=menus.get(i).getTitle()%>
            </div>
            <div>
                <%=menus.get(i).getPrice()%>
            </div>
            <div>
                <form action="/act" method="post">
                    <input type="hidden" name="reaction" value="clear">
                    <input type="hidden" name="index_array" value="<%=i%>" >
                    <button class="btn btn-success">Remove</button>
                </form>
            </div>
        </div>
 <%
         }
     }
 %>
</body>
</html>
