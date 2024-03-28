package Sprint1.Tasca1.N1.Ex2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String mdl = "";

        Car car = new Car(mdl,520);
        System.out.println("Indíqui el model del cotxe: ");
        mdl = sc.nextLine();
        car.setModel(mdl);

        System.out.println(car.speed());
        System.out.println(car.brake());

    }
}
