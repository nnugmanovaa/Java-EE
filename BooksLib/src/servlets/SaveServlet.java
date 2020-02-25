package servlets;

import database.DBUtill;
import general.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/savebook")
public class SaveServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String year = request.getParameter("year");
        String id = request.getParameter("id");

        Book book = DBUtill.findById(Long.parseLong(id));
        book.setAuthor(author);
        book.setTitle(title);
        book.setYear(Integer.parseInt(year));
        response.sendRedirect("/index.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
