package first_package;
import java.util.*;
public class student {
    private String fio,adress,fakulty;
    private int kurs;
    private int []marks;

    student(String fio,String adress,String fakulty,int kurs,int []marks)
    {
        this.fio=fio;
        this.adress=adress;
        this.fakulty=fakulty;
        this.kurs=kurs;
        this.marks=marks;
    }
    String getFio() {return fio;}
    void setFio(String fio) {this.fio=fio;}
    double sr() {
        double s=0;
        for (int i=0; i<marks.length;i++)
            s+=marks[i];
        return s/marks.length;
    }

    void print() {
        String s=" ";

        for (int i=0;i<marks.length;i++)
        {
            s+=marks[i];
            s+=" ";
        }
        System.out.println("Студент "+this.fio+"\n Адрес "+adress+"\n Факультет" + fakulty+"\n Курс"+kurs+"\n Оценки "+s);

    }
    public String toString(){
        String s=" ";
        for (int i=0;i<marks.length;i++)
        {
            s+=String.valueOf(marks[i]);
            s+=" ";
        }
        return "Студент "+fio+"\n Адрес "+adress+"\n Факультет" + fakulty+"\n Курс"+kurs+"\n Оценки "+s+"\n";
    }
}


