package ind2_inheritance;

class WorkerClass {
    int payment;
    String name, adress, post;
    WorkerClass(String name, String adress, String post){
        this.name=name;
        this.adress=adress;
        this.post=post;
        payment=0;
    }
    public String toString(){
        return "Имя: "+name+"\nАдрес: "+adress+"\nДолжность: "+post;
    }
    public void setAdress(String adress) {
        this.adress = adress;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setPost(String post) {
        this.post = post;
    }
}

class HourlyPaymentClass extends WorkerClass{
    int paymentPerHour;
    HourlyPaymentClass(String name, String adress, String post, int paymentPerHour) {
        super(name, adress, post);
        this.paymentPerHour=paymentPerHour;
    }
    public String toString(){
        return super.toString()+"\nТип оплаты: почасовая\nОплата в час: "+paymentPerHour+"$\nСумма общей выплаты в месяце: "+payment;
    }
    public void calculate_payment(int t){
        payment=paymentPerHour*t;
    }
    public void setPaymentPerHour(int paymentPerHour) {
        this.paymentPerHour = paymentPerHour;
    }
}
class SalaryClass extends WorkerClass{
    SalaryClass(String name, String adress, String post) {
        super(name, adress, post);
    }
    public String toString(){
        return super.toString()+"\nТип оплаты: ежемесячная\nОплата в месяц: "+payment+"$";
    }
    public void setPayment(int payment) {
        this.payment = payment;
    }
}
class PercentRelatedClass extends WorkerClass{
    int percentOfSale;
    PercentRelatedClass(String name, String adress, String post, int percentOfSale) {
        super(name, adress, post);
        this.percentOfSale=percentOfSale;
    }
    public String toString() {
        return super.toString() + "\nТип оплаты: процент с продаж\nПроцент: " + percentOfSale + "%\nСумма общей выплаты в месяце: "+payment+"$";
    }
    public void calculate_payment(int []m){
        int sum=0;
        for(int i=0; i<m.length;i++)
            sum+=m[i];
        payment=sum*percentOfSale/100;
    }
    public void setPercentOfSale(int percentOfSale) {
        this.percentOfSale = percentOfSale;
    }
}
