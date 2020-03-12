package nargiza.kz.db;

import nargiza.kz.models.Car;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {

    private Connection connection;

    public DBManager() {}

    public void connect(){

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_emaple?serverTimezone=UTC", "root", "");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void addCar(Car car){
        try{
            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO cars (id, name, model, year, price) " +
                    "VALUES (NULL, ?, ?, ?, ?)"
            );

            statement.setString(1, car.getName());
            statement.setString(2, car.getModel());
            statement.setInt(3, car.getYear());
            statement.setInt(4, car.getPrice());

            int rows = statement.executeUpdate();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public ArrayList<Car> getAllCars(){
        ArrayList<Car> result = new ArrayList<>();
        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM cars");
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()){
                result.add(new Car(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("model"),
                        resultSet.getInt("year"),
                        resultSet.getInt("price")
                ));
            }

            resultSet.close();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return result;
    }

}
