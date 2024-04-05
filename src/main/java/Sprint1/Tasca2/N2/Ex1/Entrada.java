package Sprint1.Tasca2.N2.Ex1;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Entrada {
    public static byte llegirByte(String missatge){
        Scanner sc = new Scanner(System.in);
        byte edat;
        do {
            System.out.println(missatge);
            try {
                edat = sc.nextByte();
            } catch (InputMismatchException e){
                System.out.println("*Error de format*");
                sc.next();
                edat = 0;
            }
        } while (edat == 0);
        return edat;
    }
    public static int llegirInt(String missatge){
        Scanner sc = new Scanner(System.in);
        int edat;
        do {
            System.out.println(missatge);
            try {
                edat = sc.nextByte();
            } catch (InputMismatchException e){
                System.out.println("*Error de format*");
                sc.next();
                edat = 0;
            }
        } while (edat == 0);
        return edat;
    }
    public static float llegirFloat(String missatge){
        Scanner sc = new Scanner(System.in);
        float edat;
        do {
            System.out.println(missatge);
            try {
                edat = sc.nextFloat();
            } catch (InputMismatchException e){
                System.out.println("*Error de format*");
                sc.next();
                edat = 0;
            }
        } while (edat == 0);
        return edat;
    }
    public static double llegirDouble(String missatge){
        Scanner sc = new Scanner(System.in);
        double edat;
        do {
            System.out.println(missatge);
            try {
                edat = sc.nextDouble();
            } catch (InputMismatchException e){
                System.out.println("*Error de format*");
                sc.next();
                edat = 0;
            }
        } while (edat == 0);
        return edat;
    }
}

