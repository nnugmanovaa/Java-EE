<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 13.03.2020
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
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
                     <div class="form-group" style="text-align: center ; margin-bottom: 40px">
                         <h1>Authorization</h1>
                     </div>
                     <div class="form-group">
                         <label>
                             USERNAME OR EMAIL *
                         </label>
                         <input class="form-control pd-2" type="text" name="email" placeholder="Insert email..." required>
                     </div>
                     <div class="form-group">
                         <label>
                             PASSWORD*
                         </label>
                         <input class="form-control pd-2" type="password" name="password" placeholder="Insert password..." required>
                     </div>
                     <div class="form-group">
                         <button class="btn btn-success form-control">Sign in</button>
                     </div>
                 </form>
             </div>
         </div>
     </div>
</body>
</html>
