package Sprint1.Tasca4.N1.Ex2;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

import static org.junit.jupiter.api.Assertions.*;

class CalculateDNITest {

    @ParameterizedTest
    @CsvSource(value = {"33973269,S", "76316570,V", "55416762,X", "55416762,X", "84622937,A",
                        "84622937,A", "30127424,T", "11913644,N", "30767392,Q", "85606489,Y"})
    public void calculateLetterDniTest(int numDni, char letterDni) {
        CalculateDNI dni = new CalculateDNI(numDni);
        Assertions.assertEquals(letterDni, dni.calculateLetterDNI(numDni));
    }
}