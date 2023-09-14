using System;
using System.Collections.Generic;
using System.Text;

namespace WindowsFormsApp2
{
    public class user
    {
        string fio, city, adress, login, password, date;
        public user(string fio, string city, string adress, string login, string date)
        {
            this.fio = fio;
            this.city = city;
            this.adress = adress;
            this.login = login;
            this.date = date;
        }
        public string toString()
        {
            return "Логин: " + login + "\tФио: " + fio + "\tГород: " + city + "\tАдрес: " + adress + "\tДата рождения: " + date;
        }
    }
}
