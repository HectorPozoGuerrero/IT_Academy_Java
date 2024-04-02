package Sprint1.Tasca3.N1.Ex1;

import java.util.ArrayList;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) {
        ArrayList<Month> monthList = new ArrayList<Month>();
        monthList.add(new Month("Enero"));
        monthList.add(new Month("Febrero"));
        monthList.add(new Month("Marzo"));
        monthList.add(new Month("Abril"));
        monthList.add(new Month("Mayo"));
        monthList.add(new Month("Junio"));
        monthList.add(new Month("Julio"));
        monthList.add(new Month("Setiembre"));
        monthList.add(new Month("Octubre"));
        monthList.add(new Month("Noviembre"));
        monthList.add(new Month("Diciembre"));

        monthList.add(7, new Month("Agosto"));

        System.out.println(monthList);

        HashSet<String> hsh = new HashSet<>();
        monthList.forEach(Month -> { hsh.add(Month.name); });

        hsh.add("Agosto");

        for (String Month : hsh){
            System.out.println(Month);
        }
    }
}
