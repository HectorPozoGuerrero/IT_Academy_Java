package Sprint3.Tasca1.N1;

import javax.swing.plaf.synth.SynthOptionPaneUI;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Undo undo = Undo.getInstance();
        Scanner sc = new Scanner(System.in);
        int eleccion = 0;
        String limpiar ="";

        do {
            System.out.println("*MENU*\n" +
                                "1 --> Añadir comanda" +
                                "\n2 -->Visualizar comandas" +
                                "\n3 -->Borrar comanda" +
                                "\n4 -->Salir");
            eleccion = sc.nextInt();
            switch (eleccion){
                case 1:

                    System.out.println("Escriba una comanda:");
                    limpiar = sc.nextLine();
                    String comanda = sc.nextLine();
                    Undo.anadirComanda(comanda);
                    break;
                case 2:
                    Undo.mostrarComandas();
                    break;
                case 3:
                    Undo.eliminarComanda();
                    break;
                default:
                    System.out.println("Debe elejir una opción del 1 al 4!");
                    break;
            }
        } while (eleccion != 4);
        System.out.println("Cerrando programa...¡Adiós!");
    }
}
