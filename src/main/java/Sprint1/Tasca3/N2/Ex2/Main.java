package Sprint1.Tasca3.N2.Ex2;

import java.util.*;

public class Main {
    static HashSet<Restaurant> llistaRestaurants = new HashSet<>();

    public static void main(String[] args) {

        llistaRestaurants.add(new Restaurant("El mirador", 10));
        llistaRestaurants.add(new Restaurant("El mirador", 10));
        llistaRestaurants.add(new Restaurant("Croqueta", 8));
        llistaRestaurants.add(new Restaurant("McDonalds", 9));
        llistaRestaurants.add(new Restaurant("El mirador", 8));

        System.out.println("Restaurants al HashSet:");
        for(Restaurant restaurant : llistaRestaurants) {
            System.out.println("- " + restaurant);
        }

        System.out.println("\nRestaurants ordenats:");
        TreeSet<Restaurant> treeSet = new TreeSet<>(llistaRestaurants);
        for(Restaurant restaurant : treeSet) {
            System.out.println("- " + restaurant);
        }
    }
}