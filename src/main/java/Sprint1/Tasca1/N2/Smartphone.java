package Sprint1.Tasca1.N2;

public class Smartphone extends Phone implements Clock, Camera{

    public Smartphone(String brand, String model) {
        super(brand, model);
    }
    @Override
    public void makePhoto(){
        System.out.println("S’està fent una foto");
    }

    @Override
    public void alarm(){
        System.out.println("Està sonant l’alarma");
    }

}
