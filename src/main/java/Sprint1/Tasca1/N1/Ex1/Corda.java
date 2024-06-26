package Sprint1.Tasca1.N1.Ex1;

public class Corda extends Instrument{

    public Corda(String nom, float preu) {
        super(nom, preu);
    }

    @Override
    public void tocar() {
        System.out.println("Està sonant un instrument de corda");
    }

    @Override
    public String toString(){
        return "El nom de l'instruments és " + super.getNomInst() +
                ", té un preu de " + super.getPreuInst() +
                "€ i es tracta d'un instrument de corda";
    }
}
