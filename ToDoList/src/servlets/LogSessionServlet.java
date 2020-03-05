package servlets;

import model.Tester;
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

@WebServlet(urlPatterns = "/login")
public class LogSessionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("login");
        String password = request.getParameter("password");

        User user = UserService.findByUsernameAndPassword(username, password);

        if(Objects.nonNull(user)){
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("/indexToDo");
        }else{
            response.sendRedirect("");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
