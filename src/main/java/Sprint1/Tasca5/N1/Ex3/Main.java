package Sprint1.Tasca5.N1.Ex3;

import java.io.IOException;
import java.util.Scanner;

import static Sprint1.Tasca5.N1.Ex3.Code.pregRutaRelativa;

public class Main {
    public static void main(String[] args) {
        String rutaRelativa = pregRutaRelativa();
        String archivoSalida = "Contingut_Directori_Indicat.txt";
        try {
            System.out.println("Guardant el contingut en: " + archivoSalida);
            Code.obtenerContenidoDirectorio(rutaRelativa, archivoSalida);
            System.out.println("Contingut guardat correctament!\n** Ruta:JavaBootcamp/Contingut_Directori.txt **");
        } catch (IOException e) {
            System.err.println("Error al tractar d'obtindre el contingut del directori: " + e.getMessage());
        }

        try {
            Code.mostrarContenidoArchivo(pregRutaRelativa());
        } catch (IOException e) {
            System.err.println("Error al llegir l'arxiu: " + e.getMessage());
        }

    }
}
