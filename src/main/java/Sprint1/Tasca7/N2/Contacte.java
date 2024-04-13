package Sprint1.Tasca7.N2;

import java.io.Serializable;

public class Contacte implements Serializable {
    private String nom ;

    public Contacte(String nom) {
        this.nom = nom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
}
