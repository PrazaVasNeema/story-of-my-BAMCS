package ind2_inheritance;
import java.util.*;
public class MainClass {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Введите имя работника: ");
        String name=sc.nextLine();
        System.out.println("Введите адрес работника: ");
        String adress=sc.nextLine();
        System.out.println("Введите должность работника: ");
        String post=sc.nextLine();
        System.out.println("Выберите тип оплаты работника (1-почасовая, 2-ежемесячная, 3-процент с продаж): ");
        int wish=sc.nextInt();
        switch (wish){
            case 1:
                System.out.println("Введите оплату в час: ");
                int paymentPerHour=sc.nextInt();
                HourlyPaymentClass hp = new HourlyPaymentClass(name, adress, post, paymentPerHour);
                System.out.println("Введите количество отработанных часов: ");
                int Hs=sc.nextInt();
                hp.calculate_payment(Hs);
                System.out.println(hp.toString());
                break;
            case 2:
                SalaryClass s = new SalaryClass(name, adress, post);
                System.out.println("Введите оплату в месяц: ");
                int payment=sc.nextInt();
                s.setPayment(payment);
                System.out.println(s.toString());
                break;
            case 3:
                System.out.println("Введите процент, получаемый с каждой продажи: ");
                int percentOfSale=sc.nextInt();
                PercentRelatedClass r = new PercentRelatedClass(name, adress, post, percentOfSale);
                System.out.println("Введите количество проданных товаров");
                int amount=sc.nextInt();
                int[] things=new int[amount];
                System.out.println("Введите цены проданных товаров: ");
                Random randomObject=new Random();
                for(int i=0;i<amount;i++)
                    things[i]=randomObject.nextInt(1000);
                r.calculate_payment(things);
                System.out.println(r.toString());
        }
    }
}
