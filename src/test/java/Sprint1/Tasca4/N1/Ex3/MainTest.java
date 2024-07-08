package Sprint1.Tasca4.N1.Ex3;

import org.junit.Test;
import static org.junit.jupiter.api.Assertions.assertThrows;


public class MainTest {
    @Test
    public void testAccessElementThrowsArrayIndexOutOfBoundsException() {
        Main arrayHandler = new Main();
        int[] sampleArray = {1, 2, 3};

        // Utilitzem assertThrows per verificar que es llança ArrayIndexOutOfBoundsException
        assertThrows(ArrayIndexOutOfBoundsException.class, () -> {
            arrayHandler.accessElement(sampleArray, 5);
        });
    }
}