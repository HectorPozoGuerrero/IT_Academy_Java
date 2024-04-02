package Sprint1.Tasca4.N1.Ex2;

import com.sun.jdi.connect.Connector;

import java.util.Scanner;
import java.util.stream.Stream;

public class Main {
    public static void main(String[] args) {
        int numDNI = 47175627;
        CalculateDNI dni = new CalculateDNI(numDNI);
        System.out.println(dni);

    }
}

