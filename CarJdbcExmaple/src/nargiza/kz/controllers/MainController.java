package nargiza.kz.controllers;

import nargiza.kz.db.DBManager;
import nargiza.kz.models.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MainController", value = "/main")
public class MainController extends HttpServlet {

    private DBManager manager;

    public void init(){
        manager = new DBManager();
        manager.connect();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String act  = request.getParameter("act");
        String uri = "";

        if(act.equals("add_car")){
            String name = request.getParameter("car_name");
            String model = request.getParameter("car_model");
            int year = Integer.parseInt(request.getParameter("car_year"));
            int price = Integer.parseInt(request.getParameter("car_price"));

            manager.addCar(new Car(null, name, model, year, price));
            uri = "?page=addcar&success=1";
        }
        response.sendRedirect("/" + uri);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        String jspPage = "home";
        if(page != null){
            if(page.equals("home")){
                jspPage = "home";
            }else if(page.equals("addcar")){
                jspPage = "addcar";
            }
        }

        if(jspPage.equals("home")){
            ArrayList<Car> cars = manager.getAllCars();
            request.setAttribute("cars", cars);
        }

        request.getRequestDispatcher("/views/" + jspPage + ".jsp" ).forward(request,response);
    }
}
