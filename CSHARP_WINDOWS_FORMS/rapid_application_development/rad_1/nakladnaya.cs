using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace rad_1
{
    class nakladnaya
    {
        int nakladnaya_id, quantity, status_prosrochka, product_price, dolg;
        string product_name, date, company_name;
        public nakladnaya(int nakladnaya_id, string company_name, int quantity, int status_prosrochka, int product_price, string product_name, string date, int dolg)
        {
            this.nakladnaya_id = nakladnaya_id;
            this.company_name = company_name;
            this.quantity = quantity;
            this.status_prosrochka = status_prosrochka;
            this.product_price = product_price;
            this.product_name = product_name;
            this.date = date;
            this.dolg = dolg;
        }
        public int GetNakladnayaId()
        {
            return nakladnaya_id;
        }
        public string GetCompanyName()
        {
            return company_name;
        }
        public int GetQuantity()
        {
            return quantity;
        }
        public int GetStatusProsrochka()
        {
            return status_prosrochka;
        }
        public int GetProductPrice()
        {
            return product_price;
        }
        public string GetProductName()
        {
            return product_name;
        }
        public string GetDate()
        {
            return date;
        }
        public int GetDolg()
        {
            return dolg;
        }
        public void SetStatusProsrochka(int status)
        {
            status_prosrochka = status;
        }
        public void SetDolg(int value)
        {
            dolg = value;
        }
    }
}
