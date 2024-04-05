package Sprint1.Tasca8.N1.Ex8;

public class Main {
    public static void main(String[] args) {
        ReverseCust reverseCust = palabra -> {
            StringBuilder palMutable = new StringBuilder(palabra);
            return palMutable.reverse().toString();
        };
        System.out.println(reverseCust.reverse("palabra"));
    }
}
