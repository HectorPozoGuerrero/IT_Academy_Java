package Sprint1.Tasca4.N1.Ex2;

import java.util.HashMap;

public class CalculateDNI {
    private int dniNumber;
    private char dniLetter;


    public CalculateDNI(int dniNumber) {
        this.dniNumber = dniNumber;
        this.dniLetter = calculateLetterDNI(dniNumber);
    }

    public int getDniNumber() {
        return dniNumber;
    }

    public char getDniLetter() {
        return dniLetter;
    }

    public void setDniNumber(int dniNumber) {
        this.dniNumber = dniNumber;
    }

    public void setDniLetter(char dniLetter) {
        this.dniLetter = dniLetter;
    }

    public char calculateLetterDNI(int dniNumber){
        char[] dniListLetters = {'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B',
                'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};
        return dniListLetters[dniNumber%23];
    }
    public String toString(){
        return "El seu DNI és " + this.dniNumber + this.dniLetter + ".";
    }
}
