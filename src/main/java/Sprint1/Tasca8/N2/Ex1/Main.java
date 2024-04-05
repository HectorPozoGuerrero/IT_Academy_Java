package Sprint1.Tasca8.N2.Ex1;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<String> listaNombres = new ArrayList<String>();
        listaNombres.add("Magdalena");
        listaNombres.add("Francisco");
        listaNombres.add("Mariano");
        listaNombres.add("FiorA");
        listaNombres.add("Ana");
        listaNombres.add("ada");
        listaNombres.add("Ingrid");

        listaNombres.stream()
                .filter(palabra -> palabra.startsWith("A") && palabra.length() == 3).forEach(System.out::println);
    }
}
