package Sprint1.Tasca6.N1.Ex1;

public class NoGenericMethod {
    private Instrument inst1;
    private Instrument inst2;
    private Instrument inst3;

    public NoGenericMethod(Instrument inst1, Instrument inst2, Instrument inst3) {
        this.inst1 = inst1;
        this.inst2 = inst2;
        this.inst3 = inst3;
    }

    public Instrument getInst1() {
        return inst1;
    }

    public Instrument getInst2() {
        return inst2;
    }

    public Instrument getInst3() {
        return inst3;
    }

    public void setInst1(Instrument inst1) {
        this.inst1 = inst1;
    }

    public void setInst2(Instrument inst2) {
        this.inst2 = inst2;
    }

    public void setInst3(Instrument inst3) {
        this.inst3 = inst3;
    }
    public String toString(){
        return "Aquest objecte anomenat NoGenericMethod té com a atributs 3 objectes;"
                + this.inst1 + " és el primer, "
                + this.inst2 + " és el segón i "
                + this.inst3 + " és el tercer.";
    }
}
