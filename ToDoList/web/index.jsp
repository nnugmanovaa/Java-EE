<%@ page import="model.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="db.DBUtill" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="./WEB-INF/parts/header.jsp" %>
<html>

  <head>
    <title>$Title$</title>
    <link type="text/css" rel="stylesheet" href="header-style.css">
  </head>

  <body>

  <div class="header__part">
    <h1>ToDo List &#x2630;</h1>
  </div>

  <div class="left__part two__parts">

    <section class="container-fluid head__text">
      <h2>Hello, Nargiza !</h2>
      <h3>What do you need to do today ?</h3>
      <h4><%out.print(DBUtill.getCurrentTimeStamp());%></h4>
    </section>
    <section>
    <div class="container form__out">
      <form class=" main__form m-1 p-2" action="addBook" method="post">
        <div class="form__content">
          <div class="form-group">
            <label class="main__label main__top">Title:</label>
            <input name="title" placeholder="Enter title please" class="main__content" type="text" required maxlength="50">
          </div>
          <div class="form-group">
            <label class="main__label">Description:</label>
            <input name="desc" placeholder="Write description" class="main__content" type="text" required maxlength="50">
          </div>
          <div class="form-group">
            <input class="form__btn" type="submit" value="Add">
          </div>
        </div>
      </form>
  </div>
  </div>


  <div class="right__part two__parts">
    <%List<Item> items = (List<Item>) request.getAttribute("items");%>
    <table class="table  table-striped table__active" id="table__content">
      <tbody>
      <%
        for(Item item : items) {
      %>
      <tr id="<%=item.getId()%>" class="table__row">
        <td>
          <input type="checkbox" id = "check">
        </td>
        <td>
          <h6 class="title"><%=item.getTitle()%></h6>
        </td>
        <td>
          <p class="desc"><%=item.getDescription()%></p>
        </td>
        <td>
          <form action="deletebutton" method="post"  class="delete">
            <input type="hidden" name="id" value="<%=item.getId()%>">
            <input type="submit"  value="&#x1f5d1" class="delete__btn">
          </form>
        </td>
        <td>
          <a href="edit.jsp?id=<%=item.getId()%>"><button class="delete__btn">&#9998;</button></a>
        </td>
      </tr>
      <%
        }
      %>
      </tbody>
    </table>
  </div>
  </section>

 <!-- <footer class="container-fluid main__footer">
    <div>Copyright © BITLAB ToDo 2019</div>
  </footer>-->

  </body>
</html>

<!--onchange="document.getElementById('').style.textDecoration='line-througn'.submit();" -->
