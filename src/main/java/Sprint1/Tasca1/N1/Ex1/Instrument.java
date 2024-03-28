package Sprint1.Tasca1.N1.Ex1;

public abstract class Instrument {

    private String nomInst;
    private float preuInst;

    public Instrument(String nom, float preu) {
        this.nomInst = nom;
        this.preuInst = preu;
    }

    public String getNomInst() {
        return nomInst;
    }

    public float getPreuInst() {
        return preuInst;
    }

    public void setNom(String nom) {
        this.nomInst = nom;
    }

    public void setPreu(float preu) {
        this.preuInst = preu;
    }

    {
        System.out.println("Bloc d'inicialització");
    }

    static {
        System.out.println("Bloc estàtic");
    }

    public abstract void tocar();

    public static void metodeEstatic(){
        System.out.println("Mètode estàtic.");
    }

}
