package testOne.numOne;
import java.util.*;
public class MainClass {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N, M;
        N = sc.nextInt();
        M = sc.nextInt();
        MatrixClass m = new MatrixClass(N, M);
        m.print();
        int sum= m.sum_of_multiples_of_tree();
        System.out.println(sum);
        m.nullify();
        m.print();
    }
}