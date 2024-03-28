package Sprint1.Tasca5.N1.Ex3;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Scanner;

public class Code{
    public static void obtenerContenidoDirectorio(String rutaRelativa, String archivoSalida) throws IOException {
        Path directorio = Paths.get(rutaRelativa);
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(archivoSalida))) {
            listarContenido(directorio, "", writer);
        }
    }

    private static void listarContenido(Path directorio, String prefijo, BufferedWriter writer) throws IOException {
        List<Path> contenido = Files.list(directorio).sorted().toList();
        for (Path entrada : contenido) {
            BasicFileAttributes attrs = Files.readAttributes(entrada, BasicFileAttributes.class);
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String fechaModificacion = dateFormat.format(attrs.lastModifiedTime().toMillis());
            if (Files.isDirectory(entrada)) {
                writer.write(prefijo + "--(D)" + entrada.getFileName() + "..........(" + fechaModificacion + ")");
                writer.newLine();
                listarContenido(entrada, prefijo + "    ", writer);
            } else {
                writer.write(prefijo + "--(F)" + entrada.getFileName() + "..........(" + fechaModificacion + ")");
                writer.newLine();
            }
        }
    }

    public static String pregRutaRelativa(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Introdueix la ruta que vols visualitzar: ");
        String rutaRelativa = sc.nextLine();
        return rutaRelativa;
    }


    public static void mostrarContenidoArchivo(String rutaArchivo) throws IOException {
        try (BufferedReader reader = new BufferedReader(new FileReader(rutaArchivo))) {
            String linea;
            System.out.println("Contenido del archivo " + rutaArchivo + ":");
            while ((linea = reader.readLine()) != null) {
                System.out.println(linea);
            }
        }
    }
}
