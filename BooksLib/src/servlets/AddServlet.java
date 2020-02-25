package servlets;

import database.DBUtill;
import general.Book;
import general.Helper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/addbook")
public class AddServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String year = request.getParameter("year");
        String id = request.getParameter("id");
        Book editBook = DBUtill.findById(Long.parseLong(id));
        if(editBook!=null){
            editBook.setTitle(title);
            editBook.setAuthor(author);
            response.sendRedirect("/index.jsp");
        }else {
            if (Helper.allNotNull(title, author, year) && Helper.isNumber(year)) {
                Book book = new Book(null, title, author, Integer.parseInt(year));
                DBUtill.add(book);
                response.sendRedirect("/index.jsp");
            } else {
                response.sendRedirect("/index.jsp?error=1");
            }
            System.out.println("It works");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

    }

}
