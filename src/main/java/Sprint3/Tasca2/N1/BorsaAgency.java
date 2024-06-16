package Sprint3.Tasca2.N1;

public class BorsaAgency implements Observer {

    private String name;

    public BorsaAgency(String name){
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public void update(String parameter) {
        System.out.println( this.getName() + "has been updated.");
    }

    @Override
    public String toString() {
        return "BorsaAgencies{" +
                "name='" + name + '\'' +
                '}';
    }
}