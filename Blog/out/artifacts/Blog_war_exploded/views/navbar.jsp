<%@ page import="nargiza.kz.models.User" %>

<%
    User user = (User)request.getAttribute("userData");
    boolean online = (boolean)request.getAttribute("online");
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-info">
    <a class="navbar-brand" href="/">TWITTER</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <%
                if(online){
            %>
            <li class="nav-item">
                <a class="nav-link" href="/?page=profile"><%=user.getFullName()%></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/?page=addblog">ADD BLOG</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="JavaScript:void(0)" onclick="logout()">LOGOUT</a>
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
            <li class="nav-item">
                <a class="nav-link" href="/?page=index">HOME </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/?page=register">REGISTER</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/?page=login">LOGIN</a>
            </li>
            <%
                }
            %>
        </ul>
    </div>
</nav>
