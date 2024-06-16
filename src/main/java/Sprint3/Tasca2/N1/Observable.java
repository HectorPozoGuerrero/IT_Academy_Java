package Sprint3.Tasca2.N1;

public interface Observable {

    void addObserver(Observer observer);
    void removeObserver(Observer observer);
    void listObserver();
    void notifyObservers();
}