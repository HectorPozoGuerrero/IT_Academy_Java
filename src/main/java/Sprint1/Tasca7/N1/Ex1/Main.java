package Sprint1.Tasca7.N1.Ex1;

public class Main {
    public static void main(String[] args) {
        TreballadorOnline to = new TreballadorOnline("Hector", "Pozo", 12f);
        TreballadorPresencial tp = new TreballadorPresencial("Ingrid", "Michel", 14f);

        to.calculatePrice();
        tp.calculatePrice();
    }
}
