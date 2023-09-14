using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SQLite;
using Microsoft.Office.Interop.Excel;

namespace rad_1
{
    public partial class Form1 : Form
    {
        SQLiteConnection Connect = new SQLiteConnection(@"Data Source=C:\Users\keela\source\repos\rad_1\rad_1\DB.db; Version=3;");
        List<company> company_list = new List<company>();
        List<nakladnaya> nakladnaya_list = new List<nakladnaya>();
        string command_text;

        public Form1()
        {
            InitializeComponent();

            SQLiteCommand Command;
            SQLiteDataReader rdr;
            Connect.Open();
            command_text = "SELECT * FROM COMPANY;";
            Command = new SQLiteCommand(command_text, Connect);
            rdr = Command.ExecuteReader();
            while (rdr.Read())
            {
                company temp = new company(rdr.GetString(0));
                company_dataGridView.Rows.Add(temp.GetCompanyName());
                add_nakladnaya_company_comboBox.Items.Add(temp.GetCompanyName());
                otchet_listBox.Items.Add(temp.GetCompanyName());
                company_list.Add(temp);
            }
            Connect.Close();
            Connect.Open();
            command_text = "SELECT * FROM NAKLADNAYA;";
            Command = new SQLiteCommand(command_text, Connect);
            rdr = Command.ExecuteReader();
            while (rdr.Read())
            {
                nakladnaya temp = new nakladnaya(rdr.GetInt32(0), rdr.GetString(1), rdr.GetInt32(2), rdr.GetInt32(3), rdr.GetInt32(4), rdr.GetString(5), rdr.GetString(6), rdr.GetInt32(7));
                nakladnaya_dataGridView.Rows.Add(temp.GetNakladnayaId(), temp.GetCompanyName(), temp.GetQuantity(), temp.GetStatusProsrochka(), 
                    temp.GetProductPrice(), temp.GetProductName(), temp.GetDate(), temp.GetDolg());

                oplata_id_comboBox.Items.Add(temp.GetNakladnayaId());
                nakladnaya_list.Add(temp);
            }
            Connect.Close();
        }   

        private void add_company_button_Click(object sender, EventArgs e)
        {
            company temp = new company(add_company_textbox.Text);
            company_list.Add(temp);

            add_company_textbox.Text = String.Empty;

            command_text = "INSERT INTO COMPANY (COMPANY_NAME) VALUES (@value);";
            SQLiteCommand Command = new SQLiteCommand(command_text, Connect);
            Command.Parameters.AddWithValue("@value", temp.GetCompanyName());
            Connect.Open();
            Command.ExecuteNonQuery();
            Connect.Close();
            add_nakladnaya_company_comboBox.Items.Add(temp.GetCompanyName());
            otchet_listBox.Items.Add(temp.GetCompanyName());

            company_dataGridView.Rows.Add(temp.GetCompanyName());
        }

        private void add_nakladnaya_button_Click(object sender, EventArgs e)
        {
            nakladnaya temp = new nakladnaya(nakladnaya_list.Count() + 1, add_nakladnaya_company_comboBox.Text,
                int.Parse(add_nakladnaya_quantity.Text), 0, int.Parse(add_nakladnaya_price.Text),
                add_nakladnaya_product_textBox.Text,
                add_nakladnaya_date.Value.ToShortDateString(), 
                int.Parse(add_nakladnaya_quantity.Text)*int.Parse(add_nakladnaya_price.Text));

            oplata_id_comboBox.Items.Add(temp.GetNakladnayaId());
            nakladnaya_list.Add(temp);

            nakladnaya_dataGridView.Rows.Add(temp.GetNakladnayaId(), temp.GetCompanyName(), temp.GetQuantity(), temp.GetStatusProsrochka(),
                   temp.GetProductPrice(), temp.GetProductName(), temp.GetDate(), temp.GetDolg());

            command_text = "INSERT INTO NAKLADNAYA (COMPANY_NAME, QUANTITY, STATUS_PROSROCHKA, PRODUCT_PRICE, PRODUCT_NAME, DATE, DOLG) VALUES (@value1, @value2, @value3, @value4, @value5, @value6, @value7);";
            SQLiteCommand Command = new SQLiteCommand(command_text, Connect);
            Command.Parameters.AddWithValue("@value1", temp.GetCompanyName());
            Command.Parameters.AddWithValue("@value2", temp.GetQuantity());
            Command.Parameters.AddWithValue("@value3", 0);
            Command.Parameters.AddWithValue("@value4", temp.GetProductPrice());
            Command.Parameters.AddWithValue("@value5", temp.GetProductName());
            Command.Parameters.AddWithValue("@value6", temp.GetDate());
            Command.Parameters.AddWithValue("@value7", temp.GetQuantity() * temp.GetProductPrice());
            Connect.Open();
            Command.ExecuteNonQuery();
            Connect.Close();
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void oplata_button_Click(object sender, EventArgs e)
        {
            int temp_value = 0;
            if (nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetDolg() - int.Parse(oplata_sum_textBox.Text) > 0)
            {
                temp_value = nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetDolg() - int.Parse(oplata_sum_textBox.Text);
            }
            if (nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetDolg() - int.Parse(oplata_sum_textBox.Text) == 0)
            {
                temp_value = 0;
            }
            if (nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetDolg() - int.Parse(oplata_sum_textBox.Text) < 0)
            {
                temp_value = 0;
                label_oplata.Text = (-(nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetDolg() - int.Parse(oplata_sum_textBox.Text))).ToString() + " возвращено";
            }

            nakladnaya_list[oplata_id_comboBox.SelectedIndex].SetDolg(temp_value);
            nakladnaya_list[oplata_id_comboBox.SelectedIndex].SetStatusProsrochka(1);
            nakladnaya_dataGridView.Rows[oplata_id_comboBox.SelectedIndex].Cells["nakladnaya_grid_dolg"].Value 
                = nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetDolg();
            if(temp_value == 0)
            {
                nakladnaya_dataGridView.Rows[oplata_id_comboBox.SelectedIndex].Cells["nakladnaya_grid_status"].Value = 1;
            }

            command_text = "UPDATE NAKLADNAYA SET DOLG = @value1, STATUS_PROSROCHKA = @value2 WHERE NAKLADNAYA_ID = @value3;";
            SQLiteCommand Command = new SQLiteCommand(command_text, Connect);
            Command.Parameters.AddWithValue("@value1", nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetDolg());
            int st = 0;
            if (temp_value == 0)
            {
                st = 1;
            }
            else
                st = 0;
            Command.Parameters.AddWithValue("@value2", st);
            Command.Parameters.AddWithValue("@value3", nakladnaya_list[oplata_id_comboBox.SelectedIndex].GetNakladnayaId());
            Connect.Open();
            Command.ExecuteNonQuery();
            Connect.Close();
        }

        private void otchet_2_Click(object sender, EventArgs e)
        {
            otchet_dataGridView.Rows.Clear();
            otchet_dataGridView.Refresh();
            int oborot, dolg;
            string[] otchet_date_1 = otchet_2_dateTimePicker_1.Value.ToShortDateString().Split('.');
            string[] otchet_date_2 = otchet_2_dateTimePicker_2.Value.ToShortDateString().Split('.');

            foreach (string temp_company in otchet_listBox.SelectedItems)
            {
                oborot = 0;
                dolg = 0;
                foreach (nakladnaya np in nakladnaya_list)
                {
                    if (np.GetCompanyName() != temp_company)
                    {
                        continue;
                    }
                    label_oplata.Text = "test";
                    string[] cur_postup_date = np.GetDate().Split('.');

                    if (int.Parse(cur_postup_date[2]) >= int.Parse(otchet_date_1[2]) && int.Parse(cur_postup_date[2]) <= int.Parse(otchet_date_2[2])
                        && int.Parse(cur_postup_date[1]) >= int.Parse(otchet_date_1[1]) && int.Parse(cur_postup_date[1]) <= int.Parse(otchet_date_2[1])
                        && int.Parse(cur_postup_date[0]) >= int.Parse(otchet_date_1[0]) && int.Parse(cur_postup_date[0]) <= int.Parse(otchet_date_2[0]))
                    {

                        oborot += np.GetQuantity();
                        dolg += np.GetDolg();

                    }
                }
                if (oborot != 0)
                    otchet_dataGridView.Rows.Add(temp_company, oborot, dolg);
            }
        }

        private void export_excel_Click(object sender, EventArgs e)
        {
            int i;
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.ShowDialog();
            string filename = ofd.FileName;
            Microsoft.Office.Interop.Excel.Application myExc =
                new Microsoft.Office.Interop.Excel.Application();
            Workbook myWB = myExc.Workbooks.Open(filename, 0, false, 5, "", "", false,
                XlPlatform.xlWindows, "", true, false, 0, true, false, false);
            Worksheet myWsh = myWB.Sheets[1];

            myWsh.Cells.ClearContents();

            myWsh.Cells[1, 1] = "id поступленения";
            myWsh.Cells[1, 2] = "Компания";
            myWsh.Cells[1, 3] = "Количество";
            myWsh.Cells[1, 4] = "Статус оплаты";
            myWsh.Cells[1, 5] = "Цена";
            myWsh.Cells[1, 6] = "Товар";
            myWsh.Cells[1, 7] = "Дата";
            myWsh.Cells[1, 8] = "Долг";
            i = 2;
            foreach(nakladnaya nk in nakladnaya_list)
            {
                myWsh.Cells[i, 1] = nk.GetNakladnayaId();
                myWsh.Cells[i, 2] = nk.GetCompanyName();
                myWsh.Cells[i, 3] = nk.GetQuantity();
                myWsh.Cells[i, 4] = nk.GetStatusProsrochka();
                myWsh.Cells[i, 5] = nk.GetProductPrice();
                myWsh.Cells[i, 6] = nk.GetProductName();
                myWsh.Cells[i, 7] = nk.GetDate();
                myWsh.Cells[i, 8] = nk.GetDolg();
                i++;
            }
            myWB.Save();
            myExc.Quit();
        }
    }
}
