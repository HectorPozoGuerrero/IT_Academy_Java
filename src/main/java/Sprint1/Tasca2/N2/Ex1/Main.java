package Sprint1.Tasca2.N2.Ex1;

import Sprint1.Tasca2.N2.Ex1.Entrada;

public class Main {
    public static void main(String[] args) {


        String missatge = "Digues amb numeros la teva edat(Byte): ";
        System.out.println(Entrada.llegirByte(missatge));

        missatge = "Digues amb numeros la teva edat(Int): ";
        System.out.println(Entrada.llegirInt(missatge));

        missatge = "Digues un número amb dues xifres decimals(Float): ";
        System.out.println(Entrada.llegirFloat(missatge));

        missatge = "Digues un número amb dues xifres decimals(Double): ";
        System.out.println(Entrada.llegirDouble(missatge));
    }
}
