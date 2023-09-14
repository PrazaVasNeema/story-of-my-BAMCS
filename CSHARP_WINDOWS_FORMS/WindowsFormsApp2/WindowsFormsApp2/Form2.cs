using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Form2 : Form
    {
        public Form2(string fio, string city, string adress, string login, string date)
        {
            InitializeComponent();
            Label formTwoLabel = new Label();
            formTwoLabel.Location = new Point(160, 72);
            formTwoLabel.Size = new Size(292, 100);
            formTwoLabel.Text = "Спасибо, " + login + "\n\nФио: " + fio + "\nГород: " + city + "\nАдрес: " + adress + "\nДата рождения: " + date;
            this.Controls.Add(formTwoLabel);
        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {
            Form1 frmOne = new Form1();
        }
    }
}
