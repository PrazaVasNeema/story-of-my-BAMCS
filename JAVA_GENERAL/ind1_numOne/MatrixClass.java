package testOne.numOne;
import java.util.*;
public class MatrixClass {
    int m[][];
    MatrixClass(int N, int M){
        m=new int[N][M];
        Random r=new Random();
        for(int i=0; i<N;i++)
            for (int j=0;j<M;j++)
                m[i][j]=r.nextInt(30);
    }
    public void print() {
        for (int i = 0; i < m.length; i++) {
            for (int j = 0; j < m[i].length; j++)
                System.out.print(m[i][j] + " ");
            System.out.println();
        }
    }
    public int sum_of_multiples_of_tree(){
        int sum = 0;
        for (int i=0;i<m.length;i++)
            for(int j=0;j<m[i].length;j++)
                if((m[i][j]%3==0) &&(i+j+2)%2==0)
                    sum+=m[i][j];
        return sum;
    }
    public void nullify(){
        for(int i=0;i<m.length-1;i++)
            for(int j=i+1;j<m[i].length;j++)
                if(m[i][j]%2==0)
                    m[i][j]=0;
    }
}
