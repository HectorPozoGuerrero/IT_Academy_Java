package Sprint1.Tasca6.N2.Ex1;

import Sprint1.Tasca6.N1.Ex2.GenericMethod;
import Sprint1.Tasca6.N1.Ex2.Persona;

public class Main {
    public static void main(String[] args) {
        Persona prsn1 = new Persona("Hector", "Pozo", 29);
        int nt1 = 13;
        String strng = "Hello World!";

        Sprint1.Tasca6.N1.Ex2.GenericMethod.genericMethod(prsn1,nt1,strng);
        GenericMethod.genericMethod(nt1,strng,prsn1);
    }
}
