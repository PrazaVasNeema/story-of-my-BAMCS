package testOne.numTwo;
import java.util.*;
public class MainClass {
    public static void main(String [] args) {
        Scanner sc = new Scanner(System.in);
        AvtoparkClass park = new AvtoparkClass();
        System.out.println("Введите количество автомобилей: ");
        int amount = sc.nextInt();
        sc.nextLine();
        for (int i=0;i<amount;i++){
            System.out.println("Введите марку: ");
            String marka=sc.nextLine();
            System.out.println("Введите номер: ");
            int num=sc.nextInt();
            VehicleClass vehicle=new VehicleClass(num, marka);
            park.add(vehicle);
            sc.nextLine();
        }
        System.out.println("Введите номер машины, которую надо удалить: ");
        int num=sc.nextInt();
        park.del(num);
        System.out.println("Введите марку машин, которые надо найти: ");
        sc.nextLine();
        String marka=sc.nextLine();
        park.findByMarka(marka);
    }
}
