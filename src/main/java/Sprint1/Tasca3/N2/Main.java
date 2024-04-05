package Sprint1.Tasca3.N2;

import java.util.HashSet;

public class Main {
    static HashSet<Restaurant> listaRestaurantes = new HashSet<>();

    public static void main(String[] args) {


        listaRestaurantes.add(new Restaurant("El mirador",10));
        listaRestaurantes.add(new Restaurant("El mirador",7));
        listaRestaurantes.add(new Restaurant("El mirador",10));

        for (Restaurant restaurant : listaRestaurantes){
            System.out.println(restaurant);
        }
    }
}
