package servlets;

import db.DBUtill;
import model.Item;
import model.Tester;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/editbutton")
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String idStr = request.getParameter("id");
        String desc = request.getParameter("desc");

        if (Tester.allNotNull(title, idStr, desc)){
            Item item = DBUtill.findById(Long.parseLong(idStr));
            item.setTitle(title);
            item.setDescription(desc);
            item.setId(Long.parseLong(idStr));
            response.sendRedirect("/index.jsp");
        } else {
            response.sendRedirect("/edit.jsp?id=" + idStr);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
