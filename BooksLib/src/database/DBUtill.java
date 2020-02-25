package database;

import general.Book;

import java.util.ArrayList;
import java.util.Objects;

public class DBUtill {
    private static ArrayList<Book> books;
    private static long id;

    public static long getId() {
        return id;
    }

    static {
        id = 1L;
        books = new ArrayList<>();
        // add(new Book(null, "OOP", "Pakizar", 2017));
    }

    public static void add(Book book){

        book.setId(id);
        books.add(book);
        id++;
    }

    public static ArrayList<Book> findAll(){
        return books;
    }

    public static Book findById(Long id){
        for(Book b: books){
            if(Objects.equals(b.getId(),id)){
                return b;
            }
        }
        return null;
    }


    public static void delete(Long id){
        Book book = findById(id);
        if(book != null){
            books.remove(book);
        }
    }

}
