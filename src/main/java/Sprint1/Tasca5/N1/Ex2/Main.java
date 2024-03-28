package Sprint1.Tasca5.N1.Ex2;

import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        String rutaRelativa = "src/main/java/Sprint1/Tasca5";
        try {
            System.out.println("Contingut del directori " + rutaRelativa + ":");
            Code.obtenerContenidoDirectorio(rutaRelativa);
        } catch (IOException e) {
            System.err.println("Error al tractar d'obtindre el contingut del directori:" + e.getMessage());
        }
    }
}
