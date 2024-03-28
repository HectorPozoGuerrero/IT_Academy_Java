package Sprint1.Tasca2.N1.Ex1;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<Product> productsList1 = new ArrayList<Product>();
        ArrayList<Product> productsList2 = new ArrayList<Product>();

        productsList1.add(new Product("Pà de motlle", 1.25F));
        productsList1.add(new Product("Mantega", 4.75F));
        productsList1.add(new Product("Sucre", 0.90F));

        Sale sale1 = new Sale(productsList1);
        Sale sale2 = new Sale(productsList2);


        sale1.calculateTotal();
        sale2.calculateTotal();
    }

}
