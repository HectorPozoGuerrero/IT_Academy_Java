package Sprint1.Tasca7.N1.Ex1;

import java.util.Scanner;

public class TreballadorOnline extends Treballador{
    private final float tarifaInternet = 99.99f;
    public TreballadorOnline(String name, String lastName, float price) {
        super(name, lastName, price);
    }
    @Override
    public void calculatePrice(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Indica les hores senceres treballades per el/la " + getName() + ":");
        float wokrHours = sc.nextFloat();
        float salari = (wokrHours * getPrice()) + tarifaInternet;
        System.out.println("Càlcul del salari desde objecte TreballadorOnline: " + salari);
    }
}
