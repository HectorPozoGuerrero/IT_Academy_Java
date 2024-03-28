package Sprint1.Tasca4.N1.Ex1;

import java.util.ArrayList;

public class Month {
    private final String monthName;

    public Month(String monthName) {
        this.monthName = monthName;
    }

    public String getMonthName() {
        return monthName;
    }

    public static void createList(ArrayList<Month> mesos) {
        mesos.add(new Month("Gener"));
        mesos.add(new Month("Febrer"));
        mesos.add(new Month("Març"));
        mesos.add(new Month("Abril"));
        mesos.add(new Month("Maig"));
        mesos.add(new Month("Juny"));
        mesos.add(new Month("Juliol"));
        mesos.add(new Month("Agost"));
        mesos.add(new Month("Setembre"));
        mesos.add(new Month("Octubre"));
        mesos.add(new Month("Novembre"));
        mesos.add(new Month("Desembre"));
    }
    public String toString(){
        return this.monthName;
    }
}
