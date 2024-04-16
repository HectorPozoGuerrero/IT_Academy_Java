package Sprint1.Tasca6.N2.Ex2;

import java.util.ArrayList;

public class GenericMethod {
    public static <T> void genericMethod(ArrayList<T> llista) {
        for(T t : llista){
            System.out.println(t);
        }
    }
}
