package Sprint1.Tasca8.N1.Ex7;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<String> lista = new ArrayList<>();
        lista.add("dew234");
        lista.add("6542wef");
        lista.add("d8rfew123");
        lista.add("4g3");

        lista.stream()
                .sorted(Comparator.comparing(String::length)).forEach(System.out::println);
    }
}
