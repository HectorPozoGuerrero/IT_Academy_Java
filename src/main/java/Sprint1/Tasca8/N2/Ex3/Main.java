package Sprint1.Tasca8.N2.Ex3;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Operacio suma = (n1, n2) -> n1 + n2;
        Operacio resta = (n1, n2) -> n1 - n2;
        Operacio multiplicacio = (n1, n2) -> n1 * n2;
        Operacio divisio = (n1, n2) -> n1 / n2;

        float sum = suma.operacio(30, 3);
        float res = resta.operacio(30, 3);
        float mult = multiplicacio.operacio(30, 3);
        float divi = divisio.operacio(30, 3);

        System.out.println("30+3=" + sum +
                    "\n30-3=" + res +
                    "\n30*3=" + mult +
                    "\n30/3=" + divi);

    }
}
