package Sprint1.Tasca7.N1.Ex2;
public class Main {
    public static void main(String[] args) {
        TreballadorOnline to = new TreballadorOnline("Hector", "Pozo", 12f);
        TreballadorPresencial tp = new TreballadorPresencial("Ingrid", "Michel", 14f);

        to.metodeDeprecated();
        tp.metodeDeprecated();
    }
}
