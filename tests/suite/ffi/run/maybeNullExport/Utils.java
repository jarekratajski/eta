import test.Hello;
import java.util.Arrays;
import java.util.List;
import java.util.LinkedList;

public class Utils {
    public static void test() {
        Hello h = new Hello();
        System.out.println(h.hello(1));
        System.out.println(h.helloNullable(1));
        System.out.println(h.helloNullable(2));
        System.out.println(h.helloNullableJ(1));

        System.out.println(h.helloNullableJ(2).getClass());
    }
}
