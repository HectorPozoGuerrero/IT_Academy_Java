package Sprint1.Tasca1.N1.Ex2;

public class Car {
    private static final String BRAND = "Audi";
    private static String model = "A3";
    private final int POWER;


    public Car(int POWER) {
        this.POWER = POWER;
    }


    public static void setModel(String model) {
        Car.model = model;
    }

    public int getPOWER() {
        return this.POWER;
    }
    public String getBrand(){ return BRAND; }
    public static String getModel() {
        return model;
    }

    public static String brake(){
        return "El vehicle està frenant";
    }
    public String speed(){
        return "El vehicle està accelerant";
    }

    public String toString(){
        return "El cotxe es un " + BRAND + ", model " +
                model + " y disposa de " + this.POWER +
                "CVs.";
    }

}
