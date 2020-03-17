package nargiza.kz.db;

import nargiza.kz.models.Menu;
import nargiza.kz.models.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {

    private Connection connection;

    public DBManager() { connect(); }

    public void connect(){

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/basilic?serverTimezone=UTC", "root", "");
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public User getUserByEmal(String email){
        User user = null;

        try {
            if (connection == null){
                connect();
            }

            PreparedStatement statement =connection.prepareStatement("SELECT * FROM users WHERE email = ?");
            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()){
                user = new User(
                  resultSet.getLong("id"),
                  resultSet.getString("email"),
                  resultSet.getString("password"),
                  resultSet.getString("full_name")

                );
            }

            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return  user;
    }

    public ArrayList<Menu> getMenu(){
        ArrayList<Menu> menus = new ArrayList<>();

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM menu");
            ResultSet resultSet =statement.executeQuery();

            while (resultSet.next()){
                menus.add(new Menu(
                    resultSet.getLong("id"),
                    resultSet.getString("type"),
                    resultSet.getString("title"),
                    resultSet.getString("content"),
                    resultSet.getInt("price")
                ));
            }

            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return menus;
    }



}
