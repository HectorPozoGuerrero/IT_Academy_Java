package Sprint1.Tasca8.N1.Ex2;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> lista = new ArrayList<>();
        lista.add("Alfonso");
        lista.add("Maria");
        lista.add("Gerardo");
        lista.add("Rosa");
        lista.add("Leopoldo");
        lista.add("Anna");


        lista.stream()
                .filter(element -> element.contains("o") && element.length() >= 5).toList().forEach(System.out::println);
    }
}
