package Sprint1.Tasca6.N2.Ex1;

public class Persona {
    private String name;
    private String scndname;
    private int age;


    public Persona(String name, String scndname, int age) {
        this.name = name;
        this.scndname = scndname;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public String getScndname() {
        return scndname;
    }

    public int getAge() {
        return age;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setScndname(String scndname) {
        this.scndname = scndname;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String toString(){
        return "Nom: " + this.name
                + "\nCognom: " + this.scndname
                + "\nEdat: " + this.age;
    }
}
