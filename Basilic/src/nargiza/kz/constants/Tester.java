package nargiza.kz.constants;

import java.util.Objects;

public class Tester {

    public static boolean allNotNull(String... strings) {
        for (String s : strings) {
            if (Objects.isNull(s))
                return false;
        }
        return true;
    }
}
