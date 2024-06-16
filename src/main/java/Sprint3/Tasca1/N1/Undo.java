package Sprint3.Tasca1.N1;

import java.util.ArrayList;

public class Undo {
    private static Undo instance;
    ArrayList<String> comandas;

    private Undo(){
        comandas = new ArrayList<>();
    }

    public static Undo getInstance() {
        if(instance == null){
            instance = new Undo();
        }
        return instance;
    }

    public static void anadirComanda(String comanda){
        instance.comandas.add(comanda);
        System.out.println("La comanda se ha añadido con exito!");
    }

    public static void eliminarComanda(){
        if (!instance.comandas.isEmpty()) {
            instance.comandas.remove((instance.comandas.size() - 1));
            System.out.println("Última comanda eliminada!");
        } else {
            System.out.println("No hay comanda a eliminar!");
        }
    }

    public static void mostrarComandas(){
        System.out.println("Listado completo de comandas: ");
        for (String comanda : instance.comandas){
            System.out.println("- " + comanda
            );
        }
    }

}
