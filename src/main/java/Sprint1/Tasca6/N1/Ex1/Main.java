package Sprint1.Tasca6.N1.Ex1;

public class Main {
    public static void main(String[] args) {
        Instrument i1 = new Instrument("Guitarra");
        Instrument i2 = new Instrument("Flauta");
        Instrument i3 = new Instrument("Triangle");
        NoGenericMethod ng = new NoGenericMethod(i1, i2, i3);

        System.out.println(ng);
    }

}
