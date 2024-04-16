package Sprint1.Tasca6.N2.Ex2;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        ArrayList<Object> llista = new ArrayList<Object>();
        llista.add(new Persona("Hector","Pozo",29));
        llista.add("Hello world!");
        llista.add(23453);


        GenericMethod.genericMethod(llista);
    }
}
