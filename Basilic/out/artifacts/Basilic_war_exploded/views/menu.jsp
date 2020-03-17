<%@ page import="java.util.ArrayList" %>
<%@ page import="nargiza.kz.models.Menu" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="link.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<%ArrayList<Menu> menus = (ArrayList<Menu>)request.getAttribute("menu");%>

    <%
        if(!online){
    %>
    <div class="alert alert-danger" role="alert">
        Please, login in order to see basket!
    </div>
    <%
        }
    %>

    <div class="heading">
        Breakfast (06:00 - 11:45)
    </div>
    <section class="container menu">
        <%

            if(menus != null){
                for(Menu m : menus){
                    if(m.getType().equals("breakfast")){
        %>
        <div class="menu__card">
             <form action="/act" method="post">
                <input type="hidden" name="reaction" value="addbasket">
                <input type="hidden" name="type" value="<%=m.getType()%>">
                <input type="hidden" name="id" value="<%=m.getId()%>">
                <input type="hidden"  name="content" value="<%=m.getContent()%>">
                <input type="hidden"  name="title" value="<%=m.getTitle()%>">
                <input type="hidden"  name="price" value="<%=m.getPrice()%>">
                <div>
                    <img src="<%=m.getContent()%>" alt="" width="300px" height="200px">
                </div>
                <div>
                    <%=m.getTitle()%>
                </div>
                <div>
                    <%=m.getPrice()%>
                </div>
                <div>
                    <button class="btn btn-success">Add to basket</button>
                </div>
             </form>
            </div>
        <%
                    }
                }
            }
        %>

    </section>

    <div class="heading salat">
        Salad's
    </div>

    <section class="container menu">
        <%
            if(menus != null){
                for(Menu m : menus){
                    if(m.getType().equals("salat")){
        %>
        <div class="menu__card">
             <form action="/act" method="post">
                <input type="hidden" name="reaction" value="addbasket">
                <input type="hidden" name="type" value="<%=m.getType()%>">
                <input type="hidden" name="id" value="<%=m.getId()%>">
                <input type="hidden"  name="content" value="<%=m.getContent()%>">
                <input type="hidden"  name="title" value="<%=m.getTitle()%>">
                <input type="hidden"  name="price" value="<%=m.getPrice()%>">
                <div>
                    <img src="<%=m.getContent()%>" alt="" width="300px" height="200px">
                </div>
                <div>
                    <%=m.getTitle()%>
                </div>
                <div>
                    <%=m.getPrice()%>
                </div>
                <div>
                    <button type="submit" class="btn btn-success" >Добавить в корзину</button>
                </div>
             </form>
        </div>
        <%
                    }
                }
            }
        %>

    </section>

<div class="heading salat">
    Soup's
</div>

<section class="container menu">
    <%
        if(menus != null){
            for(Menu m : menus){
                if(m.getType().equals("first")){
    %>
    <div class="menu__card">
        <form action="/act" method="post">
            <input type="hidden" name="reaction" value="addbasket">
            <input type="hidden" name="type" value="<%=m.getType()%>">
            <input type="hidden" name="id" value="<%=m.getId()%>">
            <input type="hidden"  name="content" value="<%=m.getContent()%>">
            <input type="hidden"  name="title" value="<%=m.getTitle()%>">
            <input type="hidden"  name="price" value="<%=m.getPrice()%>">
            <div>
                <img src="<%=m.getContent()%>" alt="" width="300px" height="200px">
            </div>
            <div>
                <%=m.getTitle()%>
            </div>
            <div>
                <%=m.getPrice()%>
            </div>
            <div>
                <button type="submit" class="btn btn-success" >Добавить в корзину</button>
            </div>
        </form>
    </div>
    <%
                }
            }
        }
    %>

</section>

</body>
</html>
