package Sprint1.Tasca4.N1.Ex1;

import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;

import java.util.ArrayList;


public class MonthTest {


    @Test
    public void sizeVerificationTest() {
        ArrayList<Month> monthsListTest = new ArrayList<Month>();
        Month.createList(monthsListTest);
        Assertions.assertEquals(monthsListTest.size(), 12, "La llista té " +
                        monthsListTest.size() + " posicións, ha de tindre 12!");
    }

    @Test
    public void notNullTest(){
        ArrayList<Month> monthsListTest = new ArrayList<Month>();
        Month.createList(monthsListTest);
        Assertions.assertNotNull(monthsListTest, "La llista es nula!");
    }

    @Test
    public void augustPosition(){
        ArrayList<Month> monthsListTest = new ArrayList<Month>();
        Month.createList(monthsListTest);
        Assertions.assertEquals("Agost", monthsListTest.get(7).getMonthName(), "Colocació incorrecta" +
                        "del mes 8 a la llista!");
    }
}