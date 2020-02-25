package general;

public class Book {

    private String title;
    private Long id;
    private String author;
    private int year;

    public Book(){

    }

    public Book(Long id, String title, String author, int year) {
        this.id = id;
        this.author  = author;
        this.title = title;
        this.year = year;
    }

    public long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getYear() {
        return year;
    }

}
