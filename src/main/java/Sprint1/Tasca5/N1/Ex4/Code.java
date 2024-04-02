package Sprint1.Tasca5.N1.Ex4;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

import static Sprint1.Tasca5.N1.Ex3.Code.pregRutaRelativa;

public class Code {
    public static void menu(){
        int opcionSeleccionada = 0;
        String rutaRelativa;
        do {
            Scanner sc = new Scanner(System.in);
            System.out.println("Indiqui amb el numero, l'opció a realitzar:\n1.Guardar el resultat de la busqueda en un fitxer.\n2.Llegir un fitxer.\n3.Sortir.");
            opcionSeleccionada = sc.nextInt();
            switch (opcionSeleccionada){
                case 1:
                    rutaRelativa = pregRutaRelativa();
                    String archivoSalida = "Contingut_Directori_Indicat.txt";
                    try {
                        System.out.println("Guardant el contingut en: " + archivoSalida);
                        Sprint1.Tasca5.N1.Ex3.Code.obtenerContenidoDirectorio(rutaRelativa, archivoSalida);
                        System.out.println("Contingut guardat correctament!\n** Ruta:JavaBootcamp/Contingut_Directori.txt **");
                    } catch (IOException e) {
                        System.err.println("Error al tractar d'obtindre el contingut del directori: " + e.getMessage());
                    }
                    break;
                case 2:
                    rutaRelativa = pregRutaRelativa();
                    try {
                        FileReader fr = new FileReader(rutaRelativa);
                        BufferedReader br = new BufferedReader(fr);
                        String linea = "";
                        while ((linea = br.readLine()) != null) {
                            if (!linea.isEmpty()) {
                                System.out.println(linea);
                            }
                        }
                        br.close();
                    } catch (Exception e){
                        System.out.println(e.getMessage());
                    }
                    break;
            }
        } while (opcionSeleccionada != 3);
    }
}
