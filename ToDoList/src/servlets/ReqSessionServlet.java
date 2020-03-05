package servlets;

import model.User;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Objects;

@WebServlet(urlPatterns = "/registr")
public class ReqSessionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("login");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");

        if(Objects.equals(password, confirm)){
            HttpSession session = request.getSession();
            User user = new User(username, password);
            UserService.register(user);
            session.setAttribute("user", user);
            response.sendRedirect("/indexToDo");
        }
        else{
            response.sendRedirect("");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
