package Sprint1.Tasca7.N1.Ex2;

import java.util.Scanner;

public class Treballador {
    private String name;
    private String lastName;
    private float price;

    public Treballador(String name, String lastName, float price) {
        this.name = name;
        this.lastName = lastName;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public String getLastName() {
        return lastName;
    }

    public float getPrice() {
        return price;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void calculatePrice(){
        Scanner sc = new Scanner(System.in);
        float wokrHours = sc.nextFloat();
        float salari = wokrHours * price;
        System.out.println("Càlcul del salari desde objecte Treballador: " + salari);
    }

    public String toString() {
        return "Treballador: " + this.name + " "
                + this.lastName + "\nPreu/hora: "
                + this.price;
    }
}
