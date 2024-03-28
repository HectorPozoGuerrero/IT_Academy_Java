package Sprint1.Tasca3.N1.Ex2;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class Main {
    public static void main(String[] args) {
        List<Integer> numberList = new ArrayList<>();
        numberList.add(11);
        numberList.add(22);
        numberList.add(33);
        numberList.add(44);
        numberList.add(55);
        System.out.println(numberList);

        List<Integer>   numberList2 = new ArrayList<>();
        ListIterator it = numberList.listIterator(numberList.size());
        while(it.hasPrevious()){
            int numAnterior = (int) it.previous();
            numberList2.add(numAnterior);
        }
        System.out.println(numberList2);
    }
}
