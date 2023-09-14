package testOne.numTwo;
import java.util.*;
public class AvtoparkClass {
    ArrayList<VehicleClass> a;
    AvtoparkClass(){
        a=new ArrayList<VehicleClass>();
    }
    public void add(VehicleClass vehicle){
        a.add(vehicle);
    }
    public void del(int num){
        int p=-1;
        for(int i=0;i<a.size();i++)
            if(num==a.get(i).getNum())
                p=i;
        if (p>-1) {
            a.remove(p);
            System.out.println("Удалили машину под номером "+num);
        }
        else
            System.out.println("Машины под таким номером нет");
    }
    public void findByMarka(String marka){
        System.out.println("Машины под маркой "+marka+":");
        for(int i=0, k=-1;i<a.size();i++,k=-1) {
            if (marka.equalsIgnoreCase(a.get(i).getMarka()))
                k = i;
            if (k > -1)
                System.out.println(a.get(i).getNum());
        }
    }
    public void print(){
        System.out.println("Список машин в автопарке: ");
        for(int i=0;i<a.size();i++)
            a.get(i).print();
    }
}
