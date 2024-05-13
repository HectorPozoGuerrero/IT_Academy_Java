package Sprint1.Tasca1.N1.Ex1;

public class Main {
    public static void main(String[] args) {
        Vent vent = new Vent("flauta", 15.75f);
        Corda corda = new Corda("guitarra", 849.15f);
        Percussio percussio = new Percussio("caixa", 300.25f);

        System.out.println(vent);
        System.out.println(corda);
        System.out.println(percussio);

        vent.tocar();
        corda.tocar();
        percussio.tocar();
    }
}
