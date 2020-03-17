<%@ page import="nargiza.kz.models.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    User user = (User)request.getAttribute("userData");
    boolean online = (boolean)request.getAttribute("online");
%>
<nav class="navbar navbar-expand-lg navbar-light navbar__main">
    <div class="navbar-brand">
        <img src="/img/basilic_logo.png" alt="" width="220px" height="130px">
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto ">
            <%
                if(online){
            %>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=index">Basilic</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=menu">Menu</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=delivery">Delivery</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=about">About us</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=stock">Stocks</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=basket">Basket</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=profile">Profile</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="JavaScript:void(0)" onclick="logout()">Exit</a>
            </li>
            <form action="/act" method="post" id = "logoutFormId">
                <input type="hidden" name="reaction" value="logout">
            </form>
            <script type="text/javascript">
                function logout(){
                    document.getElementById("logoutFormId").submit();
                }
            </script>
            <%
            }else{
            %>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=index">Basilic</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=menu">Menu</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=delivery">Delivery</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=about">About us</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=stock">Stocks</a>
            </li>
            <li class="navbar-brand nav-item">
                <a class="nav-link" href="/?page=login">Sign in</a>
            </li>
            <%
                }
            %>
        </ul>
    </div>
</nav>
