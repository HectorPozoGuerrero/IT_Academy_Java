package Sprint1.Tasca8.N2.Ex4;

import java.util.ArrayList;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        String[] lista = {"ge84","b3wfees","f5erg"};

        Arrays.sort(lista, (s1,s2) -> Character.compare(s1.charAt(0), s2.charAt(0)));
        System.out.println("Llista ordenada: ");
        for (String cadena : lista){
            System.out.println(cadena);
        }
    }
}
