package Sprint1.Tasca8.N2.Ex2;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> numeros = new ArrayList<Integer>();
        numeros.add(11);
        numeros.add(36);
        numeros.add(373);
        numeros.add(52);
        numeros.add(74);
        numeros.add(304);

        List<String> lista = numeros.stream()
                .map(n -> n%2 == 0 ? "e"+n : "o"+n).toList();

        System.out.println(lista);
    }
}
