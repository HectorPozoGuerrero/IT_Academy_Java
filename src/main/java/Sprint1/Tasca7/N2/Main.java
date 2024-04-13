package Sprint1.Tasca7.N2;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Objects;

public class Main {
    public static void main(String[] args) {
        Contacte contacte = new Contacte("Hector");

        try {
            FileOutputStream fileOut = new FileOutputStream("Contactes.json");
            ObjectOutputStream out = new ObjectOutputStream(fileOut);
            out.writeObject(contacte);
            out.close();
            fileOut.close();
            System.out.println("Objecte serialitzat amb èxit!");
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
