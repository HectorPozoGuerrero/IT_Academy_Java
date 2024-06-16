package Sprint3.Tasca2.N1;

import java.util.ArrayList;
import java.util.List;

public class Broker implements Observable {
    private String name;

    private List<Observer> borsaAgenciesList = new ArrayList<>();

    public Broker(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
        notifyObservers();
    }

    @Override
    public void addObserver(Observer observer) {
        borsaAgenciesList.add(observer);
    }

    @Override
    public void removeObserver(Observer observer) {
        borsaAgenciesList.remove(observer);
    }

    @Override
    public void listObserver() {
        borsaAgenciesList.forEach(System.out::println);

    }

    @Override
    public void notifyObservers() {
        borsaAgenciesList.forEach(x -> x.update(name));
    }
}
