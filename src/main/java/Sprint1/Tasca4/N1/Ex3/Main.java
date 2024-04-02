package Sprint1.Tasca4.N1.Ex3;

public class Main {
    public static void main(String[] args) {
        arrayException();
    }
    public static void arrayException() throws ArrayIndexOutOfBoundsException {
        int[] exemple = new int[1];
        exemple[7] = 2;
    }
}
