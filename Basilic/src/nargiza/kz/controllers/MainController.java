package nargiza.kz.controllers;

import nargiza.kz.constants.Tester;
import nargiza.kz.constants.constants;
import nargiza.kz.db.Basket;
import nargiza.kz.db.DBManager;
import nargiza.kz.models.Menu;
import nargiza.kz.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet("/act")
public class MainController extends HttpServlet {

    private DBManager dbManager;

    public void init(){ dbManager = new DBManager();}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user  = (User)request.getSession().getAttribute(constants.SESSION_USER);
        boolean online = user!=null;

        String reaction = request.getParameter("reaction");
        String url = "/";

        if(reaction.equals("sign_in")){
            System.out.println("hello");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            User authUser = dbManager.getUserByEmal(email);

            if(Objects.nonNull(authUser) && authUser.getPassword().equals(password)){
                request.getSession().setAttribute("NEW_SESSION_USER", authUser);
                url ="/?page=profile";
            }else {
                url="/?page=login&error=1";
            }
        }else if(reaction.equals("logout") && online){
            Basket.remove(Basket.getMenus());
            request.getSession().removeAttribute("NEW_SESSION_USER");
            url = "/?page=login";
        }else if(reaction.equals("addbasket")){
            System.out.println("inside");
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String price = request.getParameter("price");
            String type = request.getParameter("type");
            String id = request.getParameter("id");
            if(Tester.allNotNull(title, content, price, id, type)){
                Menu menu = new Menu(Long.parseLong(id),type, title, content, Integer.parseInt(price));
                System.out.println(title);
                Basket.add(menu);
                System.out.println(Basket.getMenus().size());
            }
            url = "/?page=menu";

        }else if(reaction.equals("clear")){
            String index = request.getParameter("index_array");
            Basket.clearElement(Integer.parseInt(index));
            url = "/?page=basket";
        }
        response.sendRedirect(url);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String page = request.getParameter("page");
       User user = (User)request.getSession().getAttribute(constants.SESSION_USER);
       boolean online = user!=null;

        request.setAttribute("userData", user);
        request.setAttribute("online", online);

        String jspPage = "index";

        if(page != null){
            if (page.equals("index")){
                jspPage = "index";
            }else if(page.equals("login") && !online){
                jspPage = "login";
            }else if(page.equals("menu")){
                jspPage = "menu";
            }else if(page.equals("basket")){
                jspPage = "basket";
            }else if(page.equals("delivery")){
                jspPage = "delivery";
            }else if(page.equals("about")){
                jspPage = "about";
            }else if(page.equals("profile")){
                jspPage = "profile";
            }else if(page.equals("stock")){
                jspPage = "stock";
            }
        }

        if(jspPage.equals("menu")){
            ArrayList<Menu> menus = dbManager.getMenu();
            request.setAttribute("menu", menus);
        }

        request.getRequestDispatcher("/views/" + jspPage + ".jsp").forward(request,response);
    }
}
