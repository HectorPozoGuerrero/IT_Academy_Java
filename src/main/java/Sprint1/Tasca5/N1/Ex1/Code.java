package Sprint1.Tasca5.N1.Ex1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

public class Code {
    public static List<String> obtenerContenidoDirectorio(String rutaRelativa) throws IOException {
        Path directorio = Paths.get(rutaRelativa);
        List<String> contenido = Files.list(directorio)
                .map(Path::getFileName)
                .map(Path::toString)
                .sorted()
                .collect(Collectors.toList());
        return contenido;
    }
}
