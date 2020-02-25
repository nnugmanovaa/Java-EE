<%@ page import="database.DBUtill" %>
<%@ page import="general.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>BookList</title>
    <link  type = "text/css" href="style.css" rel="stylesheet">
  </head>
  <body>
    <section class="nav__bar">
      <h2>BookStore</h2>
    </section>
  <section class="main__content">
    <div class="add__form">
      <form action="addbook" method="post" class="add__new__book">
        <input type="text" placeholder="Title" name="title" required>
        <input type="text" placeholder="Author" name="author" required>
        <input type="number" placeholder="Year of publishing" name="year" required>
        <input type="hidden" name="id" value="<%out.print(DBUtill.getId());%>">
        <input id="add" type="submit" value="ADD">
      </form>
    </div>
    <%
      for (Book book : DBUtill.findAll()) {
    %>
    <div class="block">

        <div>Title: <%out.print(book.getTitle());%></div>
        <div>
          Author: <%out.print(book.getAuthor());%>
        </div>
        <div>
          Year: <%out.print(book.getYear());%>
        </div>
        <div>
            Book description : Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br>
        </div>



      <form action="updatebutton" method="post" class="update">
        <input type="hidden" name="id" value="<%out.print(book.getId()); %>">
        <input type="submit"  value="UPDATE" name="buttonClicked" class="updateable">
      </form>


      <form action="deletebutton" method="post"  class="delete">
        <input type="hidden" name="id" value="<%out.print(book.getId());%>">
        <input type="submit"  value="DELETE" name="buttonClicked" class="updateable">
      </form>


    </div>
    <%
      }
    %>
  </section>
  </body>
</html>
