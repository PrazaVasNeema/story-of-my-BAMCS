package testOne.numTwo;

public class VehicleClass {
    private int num;
    private String marka;
    VehicleClass(int num, String marka) {
        this.num = num;
        this.marka = marka;
    }
    String getMarka(){
        return marka;
    }
    int getNum(){
        return num;
    }
    public void print(){
        System.out.println(marka+" под номером "+num);
    }
}
