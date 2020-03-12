package nargiza.kz.controllers;

import nargiza.kz.db.DBManager;
import nargiza.kz.models.Blog;
import nargiza.kz.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

@WebServlet("/act")
public class MainController extends HttpServlet {

    private DBManager dbManager;

    public void init(){ dbManager = new DBManager();}

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = (User) req.getSession().getAttribute("NEW_SESSION_USER");
        boolean online = user!=null;

        String reaction = req.getParameter("reaction");
        String url = "/";

        if(reaction.equals("sign_in")){
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            User authUser = dbManager.getUserByEmail(email);

            if(Objects.nonNull(authUser) && authUser.getPassword().equals(password)){
                req.getSession().setAttribute("NEW_SESSION_USER", authUser);
                url ="/?page=profile";
            }else {
                url="/?page=login&error=1";
            }
        }else if(reaction.equals("logout") && online){
            req.getSession().removeAttribute("NEW_SESSION_USER");
            url = "/?page=login";
        }else if(reaction.equals("addblog") && online){

            String title = req.getParameter("title");
            String shortContent = req.getParameter("short_content");
            String content = req.getParameter("content");

            Blog blog = new Blog(null, title, shortContent, content, null, user);
            url = (dbManager.addBlog(blog)?"/?page=index":"/?page=addblog&&error=1");

        }
        resp.sendRedirect(url);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String jspPage = "index";
        String page = req.getParameter("page");

        User user = (User)req.getSession().getAttribute("NEW_SESSION_USER");
        req.setAttribute("userData", user);
        boolean online =user!=null;
        req.setAttribute("online", online);

        if(page != null){
            if(page.equals("index")){
                jspPage = "index";
            }else if(page.equals("login") && !online){
                jspPage  = "login";
            }else if(page.equals("about")){
                jspPage  = "about";
            }
            else if(page.equals("profile") && online){
                jspPage  = "profile";
            }
            else if(page.equals("addblog") && online){
                jspPage  = "addblog";
            }
        }

        if(jspPage.equals("index")){
            ArrayList<Blog> blogs = dbManager.getAllBlogs();
            req.setAttribute("blogs", blogs);
        }

        req.getRequestDispatcher("/views/" + jspPage + ".jsp" ).forward(req, resp);
    }
}
