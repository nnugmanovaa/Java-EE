package db;

import model.Item;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Objects;

public class DBUtill {
    private static ArrayList<Item> items;
    private static Long id;

    static{
        items = new ArrayList<>();
        id = 1L;
        add(new Item(null, "IBM","finish assignment 1 untill 12pm", false ));
    }

    public static void add(Item item) {
        id++;
        item.setId(id);
        items.add(item);
    }

    public static ArrayList<Item> findAll() {
        return items;
    }

    public static Item findById(Long id) {
        for (Item item : items) {
            if (Objects.equals(item.getId(), id)) {
                return item;
            }
        }
        return null;
    }

    public static void delete(Long id) {
        Item item = findById(id);
        if (Objects.nonNull(item)) {
            items.remove(item);
        }
    }

    public static String getCurrentTimeStamp() {
        return new SimpleDateFormat("dd/MM/yyyy").format(new Date());
    }


}
