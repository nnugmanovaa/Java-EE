package model;

import java.util.Objects;

public class Tester {
    public static boolean allNotNull(String... strings){
        for(String s : strings){
            if(Objects.isNull(s))
                return false;
        }
        return true;
    }


    public static boolean isNumber(String number) {
        try {
            Integer.parseInt(number);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

}
