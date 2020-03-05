package model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Item {
    private Long id;
    private String title;
    private String description;
    private boolean isDone;

    public Item(){

    }

    public Item(Long id, String title, String description, boolean isDone){
        this.id = id;
        this.title = title;
        this.description = description;
        this.isDone = isDone;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public boolean isDone() {
        return isDone;
    }

    public void setDone(boolean done) {
        isDone = done;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCurrentTimeStamp() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }


}
