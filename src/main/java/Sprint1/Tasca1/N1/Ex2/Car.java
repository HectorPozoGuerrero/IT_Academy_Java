package Sprint1.Tasca1.N1.Ex2;

public class Car {
    private static final String BRAND = "Audi";
    private static String model;
    private final int POWER;


    public Car(String model, int POWER) {
        this.model = model;
        this.POWER = POWER;
    }


    public static void setModel(String model) {
        Car.model = model;
    }

    public int getPOWER() {
        return this.POWER;
    }
    public String getBrand(){ return this.BRAND; }
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
        return "El cotxe es un " + this.BRAND + ", model " +
                this.model + " y disposa de " + this.POWER +
                "CVs.";
    }

}
