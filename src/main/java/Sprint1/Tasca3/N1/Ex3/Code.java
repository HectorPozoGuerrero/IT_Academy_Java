package Sprint1.Tasca3.N1.Ex3;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.*;

public class Code {
    private static HashMap<String, String> lista = new HashMap<>();

    public static void rellenarLista(){

        try {
            FileReader fr = new FileReader("src/countries.txt");
            BufferedReader br = new BufferedReader(fr);
            String linea = "";
            while ((linea = br.readLine()) != null) {
                if (!linea.isEmpty()) {
                    String array[] = linea.split(" ");
                    lista.put(array[0], array[1]);
                }
            }
            br.close();
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    public static void juego(){
        Code.rellenarLista();
        Scanner sc = new Scanner(System.in);
        String nombre = "";
        System.out.println("Indíca tu nombre: ");
        nombre = sc.nextLine();
        System.out.println("Indíca las capitales de los siguientes paises: ");
        int pregunta = 1;
        int nota = 0;
        String respuesta = "";
        List<String> keys = new ArrayList<String>(lista.keySet());
        while (pregunta <= 10){
            int random = (int) (Math.floor(Math.random()*(-lista.size() +1)+ lista.size()));
            String key = keys.get(random);
            String valor = lista.get(key);
            System.out.println(key + ": ");
            respuesta = sc.nextLine();
            respuesta = respuesta.replace(" ","_");
            if ( respuesta.equalsIgnoreCase(valor)){
                System.out.println("Correcto!");
                nota += 1;
            } else {
                System.out.println("Incorrecto!");
            }
            lista.remove(key);
            pregunta ++;
        }
        String guardar = nombre + ";" + nota;
        try(FileWriter escribir = new FileWriter("src/classificacio.txt", true)){
            escribir.write(guardar);
            System.out.println(nombre + " tu nota es de " + nota + "/10.");
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
