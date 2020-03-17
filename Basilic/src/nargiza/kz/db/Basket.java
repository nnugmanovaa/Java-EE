package nargiza.kz.db;

import nargiza.kz.models.Menu;

import java.util.ArrayList;
import java.util.List;

public class Basket {
    private static List<Menu> menus;

    static {
        menus = new ArrayList<>();
    }

    public static void add(Menu menu){
        menus.add(menu);
    }

    public static List<Menu> getMenus(){ return  menus; }

    public static void remove(List<Menu> menus){
        menus.clear();
    }


    public static void clearElement(int i){
        menus.remove(i);
    }
}
