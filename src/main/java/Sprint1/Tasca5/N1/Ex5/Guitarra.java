package Sprint1.Tasca5.N1.Ex5;

import java.io.Serializable;

public class Guitarra implements Serializable {

    private String tipo;
    private String material;

    public Guitarra(String nombre, String tipo, int numCuerdas, String material) {
        this.tipo = tipo;
        this.material = material;
    }

    public String getTipo() {
        return tipo;
    }

    public String getMaterial() {
        return material;
    }


    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String toString(){
        return "Objecte serializable: Guitarra " + this.tipo + " y estic feta de " + this.material + ".";
    }
}
