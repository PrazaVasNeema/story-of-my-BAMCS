package first_package;
import java.util.*;
public class main_class {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        mass_ive sg=new mass_ive();
        System.out.println("Введите ко-во студентов");
        int n=sc.nextInt();
        sc.nextLine();
        for (int j=0;j<n;j++) {
            System.out.println("Введите фамилию");
            String f = sc.nextLine();
            System.out.println("Введите адресс");
            String ad = sc.nextLine();
            System.out.println("Введите факультет");
            String fak = sc.nextLine();
            System.out.println("Введите курс");
            int kurs = sc.nextInt();
            System.out.println("Введите кол-во оценок");
            int k = sc.nextInt();
            int[] m = new int[k];
            System.out.println("Введите оценки");
            for (int i = 0; i < k; i++)
                m[i] = sc.nextInt();
            student st = new student(f, ad, fak, kurs, m);
            st.print();
            sg.add(st);
            sc.nextLine();
        }
        System.out.println("Кого удалить из списка?");
        String f=sc.nextLine();
        sg.del(f);
        sg.print();
    }

}
