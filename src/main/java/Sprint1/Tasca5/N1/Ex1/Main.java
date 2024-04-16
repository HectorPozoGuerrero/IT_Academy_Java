package Sprint1.Tasca5.N1.Ex1;

import java.io.IOException;
import java.util.List;
import java.util.Scanner;

import static Sprint1.Tasca5.N1.Ex1.Code.obtenerContenidoDirectorio;

public class Main {

    public static void main(String[] args) {
        System.out.println("Indica la ruta relativa del directorio deseado:\n(Ejemplo: \"src/main/java/Sprint1\") ");
        Scanner sc = new Scanner(System.in);
        String rutaRelativa = sc.next();
        try {
            List<String> contenido = obtenerContenidoDirectorio(rutaRelativa);
            System.out.println("Contingut del directori " + rutaRelativa + ":");
            for (String archivo : contenido) {
                System.out.println(archivo);
            }
        } catch (IOException e) {
            System.err.println("Error al tractar d'obtindre el contingut del directori: " + e.getMessage());
        }

    }
}
