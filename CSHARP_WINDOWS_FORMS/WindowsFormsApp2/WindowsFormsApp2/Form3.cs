using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Form3 : Form
    {
        List<Label> label = new List<Label>();
        public Form3(List<user> l, int N)
        {
            InitializeComponent();
            for (int i = 0; i < N; i++)
            {
                Label lbl = new Label();
                label.Add(lbl);
                label[i].Location = new Point(160, i*20);
                label[i].Size = new Size(292, 20);
                label[i].Text = l[i].toString();
                this.Controls.Add(label[i]);
            }
        }

        private void Form3_Load(object sender, EventArgs e)
        {

        }

    }
}
