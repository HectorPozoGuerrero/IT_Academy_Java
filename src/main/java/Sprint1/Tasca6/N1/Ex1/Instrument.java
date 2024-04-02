package Sprint1.Tasca6.N1.Ex1;

public class Instrument {
    private String nombre;

    public Instrument(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String toString(){
        return this.nombre;
    }
}
