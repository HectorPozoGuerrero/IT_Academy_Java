package Sprint1.Tasca8.N1.Ex3;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<String> meses = new ArrayList<>();
        meses.add("Enero");
        meses.add("Febrero");
        meses.add("Marzo");
        meses.add("Abril");
        meses.add("Mayo");
        meses.add("Junio");
        meses.add("Julio");
        meses.add("Agosto");
        meses.add("Setiembre");
        meses.add("Octubre");
        meses.add("Noviembre");
        meses.add("Diciembre");

        meses.forEach(mes -> System.out.println(mes));
    }
}
