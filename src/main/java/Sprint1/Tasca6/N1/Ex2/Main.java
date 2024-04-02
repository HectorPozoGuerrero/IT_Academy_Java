package Sprint1.Tasca6.N1.Ex2;

public class Main {
    public static void main(String[] args) {
        Persona prsn1 = new Persona("Hector", "Pozo", 29);
        int nt1 = 13;
        String strng = "Hello World!";

        GenericMethod.genericMethod(prsn1,nt1,strng);
        GenericMethod.genericMethod(nt1,strng,prsn1);
    }
}
