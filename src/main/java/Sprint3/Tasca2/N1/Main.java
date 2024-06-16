package Sprint3.Tasca2.N1;

public class Main {
    public static void main(String[] args) {

        Broker broker = new Broker("Broker1");

        BorsaAgencies agency1 = new BorsaAgencies("Agency1");
        BorsaAgencies agency2 = new BorsaAgencies("Agency2");

        broker.addObserver(agency1);
        broker.addObserver(agency2);

        broker.listObserver();

        broker.setName("Broker2");
        broker.setName("Broker3");
        broker.setName("Broker4");

        broker.removeObserver(agency1);

        broker.listObserver();

    }
}