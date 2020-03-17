package nargiza.kz.models;

public class Menu {

    private Long id;
    private String type;
    private String title;
    private String content;
    private int price;

    public Menu(){}

    public Menu(Long id, String type, String title, String content, int price){
        this.id = id;
        this.type = type;
        this.title = title;
        this.content = content;
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }


}
