package Sprint1.Tasca5.N1.Ex1;

import java.io.IOException;
import java.util.List;
import static Sprint1.Tasca5.N1.Ex1.Code.obtenerContenidoDirectorio;

public class Main {

    public static void main(String[] args) {

        String rutaRelativa = "src/main/java/Sprint1";
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
