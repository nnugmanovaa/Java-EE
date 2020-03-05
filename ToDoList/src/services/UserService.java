package services;

import db.Storage;
import model.User;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class UserService {
    public static void register(User user) {
        List<User> users = Storage.getUsers()
                .stream()
                .filter(e -> Objects.equals(
                        e.getUsername(),
                        user.getUsername()))
                .collect(Collectors.toList());
        if (users.size() == 0) {
            Storage.add(user);
        }
    }

    public static User findByUsernameAndPassword(String username, String password) {
        for (User user : Storage.getUsers()) {
            if (Objects.equals(user.getPassword(), password) &&
                    Objects.equals(user.getUsername(), username)) {
                return user;
            }
        }
        return null;
    }
}
