package Sprint1.Tasca5.N1.Ex2;

import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Indica la ruta relativa del directorio deseado:\n(Ejemplo: \"src/main/java/Sprint1\") ");
        Scanner sc = new Scanner(System.in);
        String rutaRelativa = sc.next();
        try {
            System.out.println("Contingut del directori " + rutaRelativa + ":");
            Code.obtenerContenidoDirectorio(rutaRelativa);
        } catch (IOException e) {
            System.err.println("Error al tractar d'obtindre el contingut del directori:" + e.getMessage());
        }
    }
}
