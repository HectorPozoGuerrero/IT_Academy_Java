package Sprint1.Tasca7.N1.Ex1;

import java.util.Scanner;

public class TreballadorPresencial extends Treballador{
    private static float fuel = 150.50f;
    public TreballadorPresencial(String name, String lastName, float price) {
        super(name, lastName, price);
    }
    @Override
    public void calculatePrice(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Indica les hores senceres treballades per el/la " + getName() + ":");
        float wokrHours = sc.nextFloat();
        float salari = (wokrHours * getPrice()) + fuel;
        System.out.println("Càlcul del salari desde objecte TreballadorPresencial: " + salari);
    }
}
