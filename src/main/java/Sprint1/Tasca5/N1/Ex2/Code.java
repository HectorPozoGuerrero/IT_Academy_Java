package Sprint1.Tasca5.N1.Ex2;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;
import java.text.SimpleDateFormat;
import java.util.List;

public class Code {
    public static void obtenerContenidoDirectorio(String rutaRelativa) throws IOException {
        Path directorio = Paths.get(rutaRelativa);
        listarContenido(directorio, "");
    }

    private static void listarContenido(Path directorio, String prefijo) throws IOException {
        List<Path> contenido = Files.list(directorio).sorted().toList();
        for (Path entrada : contenido) {
            BasicFileAttributes attrs = Files.readAttributes(entrada, BasicFileAttributes.class);
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String fechaModificacion = dateFormat.format(attrs.lastModifiedTime().toMillis());
            if (Files.isDirectory(entrada)) {
                System.out.println(prefijo + "--(D)" + entrada.getFileName() + "..........(" + fechaModificacion + ")");
                listarContenido(entrada, prefijo + "    ");
            } else {
                System.out.println(prefijo + "--(F)" + entrada.getFileName() + "..........(" + fechaModificacion + ")");
            }
        }
    }
}
