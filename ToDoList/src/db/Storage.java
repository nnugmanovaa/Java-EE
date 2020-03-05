package db;

import model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class Storage {
    private  static List<User> users;
    private static Long id;

    static {
        id = 0L;
        users = new ArrayList<>();
    }

    public static void add(User user){
        user.setId(++id);
    }

    public static List<User> getUsers(){
        return users;
    }

    public static void delete(Long id){
        users = users.stream()
                .filter(e -> !Objects.equals(e.getId(), id))
                .collect(Collectors.toList());
    }

}
