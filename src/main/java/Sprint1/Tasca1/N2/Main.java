package Sprint1.Tasca1.N2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Phone phone = new Phone("Samsung", "S14");
        System.out.println("Marca el numero de teléfon vols trucar: ");
        int phoneNumber = sc.nextInt();
        phone.call(phoneNumber);

        Smartphone iphone = new Smartphone("Iphone","14");
        iphone.makePhoto();
        iphone.alarm();
    }

}
