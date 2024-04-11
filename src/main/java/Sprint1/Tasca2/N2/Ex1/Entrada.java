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

    public static char llegirChar(String missatge){
        Scanner sc = new Scanner(System.in);
        char caract = ' ';
        boolean validacion = false;
        do {
            System.out.println(missatge);
            try {
                caract = sc.next().charAt(0);
                validacion = true;
            }catch (Exception e){
                System.out.println("Introdueix un carácter vàlid!");
            }
            sc.nextLine();
        }while (!validacion);
        return caract;
    }

    public static String llegirString(String missatge){
        Scanner sc = new Scanner(System.in);
        String frase = "";
        boolean validacion = false;
        do {
            System.out.println(missatge);
            try {
                frase = sc.nextLine();
                validacion = true;
            }catch (Exception e){
                System.out.println("Introdueix un carácter vàlid!");
            }
            sc.nextLine();
        }while (!validacion);
        return frase;
    }

    public static boolean llegirSiNo(String missatge) {
        Scanner sc = new Scanner(System.in);
        boolean boLlegit = false;
        boolean validacio = false;
        String resposta = "";

        do {
            System.out.println(missatge);
            resposta = sc.nextLine();

            try {
                if (resposta.equalsIgnoreCase("s")) {
                    boLlegit = true;
                    validacio = true;
                } else if (resposta.equalsIgnoreCase("n")) {
                    boLlegit = false;
                    validacio = true;
                } else {
                    System.out.println("Introdueix una resposta vàlida.");
                    validacio = false;
                }
            } catch (Exception e) {
                System.out.println("Introdueix un boolean vàlid.");
            }
        } while (!validacio);

        return boLlegit;
    }
}

