package Sprint1.Tasca3.N2.Ex1;

import java.util.HashSet;
import java.util.Iterator;

public class Main {
    static HashSet<Restaurant> listaRestaurantes = new HashSet<>();

    public static void main(String[] args) {

        listaRestaurantes.add(new Restaurant("El mirador", 10));
        listaRestaurantes.add(new Restaurant("El mirador", 7));
        listaRestaurantes.add(new Restaurant("El mirador", 10));

        Iterator<Restaurant> iterator = listaRestaurantes.iterator();
        while (iterator.hasNext()) {
            Restaurant restaurant = iterator.next();
            System.out.println(restaurant);
        }
    }
}
