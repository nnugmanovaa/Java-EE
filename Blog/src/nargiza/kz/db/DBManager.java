package nargiza.kz.db;

import nargiza.kz.models.Blog;
import nargiza.kz.models.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {
    private Connection connection;

    public DBManager(){ connect(); }

    public void connect(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog_example?serverTimezone=UTC", "root", "");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public User getUserByEmail(String email){
        User user = null;

        try{
            if(connection == null){
                connect();
            }

            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE email = ?");
            statement.setString(1, email);

            ResultSet resultSet =statement.executeQuery();

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

        return user;
    }

    public boolean addBlog(Blog blog){
        boolean result = false;

        try{

            PreparedStatement statement = connection.prepareStatement("" +
                    "INSERT INTO blogs (title, short_content, content, author, post_date) " +
                    "VALUES (?, ?, ?, ?, NOW())");

            statement.setString(1,blog.getTitle());
            statement.setString(2,blog.getShortContent());
            statement.setString(3, blog.getContent());
            statement.setLong(4, blog.getAuthor().getId());

            result = statement.executeUpdate()>0;
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }

        return result;
    }

    public ArrayList<Blog> getAllBlogs(){
        ArrayList<Blog> blogs = new ArrayList<>();
        try {

            PreparedStatement preparedStatement = connection.prepareStatement("" +
                    "SELECT b.id, b.title, b.short_content, b.content, b.post_date, u.full_name, b.author " +
                    "FROM blogs b LEFT OUTER JOIN users u ON u.id = b.author " +
                    "ORDER BY b.post_date DESC");

            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){

                blogs.add(new Blog(
                        resultSet.getLong("id"),
                        resultSet.getString("title"),
                        resultSet.getString("short_content"),
                        resultSet.getString("content"),
                        resultSet.getDate("post_date"),
                        new User(
                                resultSet.getLong("author"),
                                null, null,
                                resultSet.getString("full_name")
                        )
                ));

            }

            preparedStatement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return blogs;
    }


}
