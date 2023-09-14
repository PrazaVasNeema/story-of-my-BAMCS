
namespace rad_1
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.company_dataGridView = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.add_company_button = new System.Windows.Forms.Button();
            this.add_company_textbox = new System.Windows.Forms.TextBox();
            this.nakladnaya_dataGridView = new System.Windows.Forms.DataGridView();
            this.otchet_dataGridView = new System.Windows.Forms.DataGridView();
            this.panel4 = new System.Windows.Forms.Panel();
            this.add_nakladnaya_price = new System.Windows.Forms.TextBox();
            this.add_nakladnaya_button = new System.Windows.Forms.Button();
            this.nakladnaya_postup_form_products = new System.Windows.Forms.Label();
            this.nakladnaya_postup_form_price = new System.Windows.Forms.Label();
            this.nakladnaya_postup_form_quantity = new System.Windows.Forms.Label();
            this.add_nakladnaya_date = new System.Windows.Forms.DateTimePicker();
            this.add_nakladnaya_quantity = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.nakladnaya_grid_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nakladnaya_grid_company_id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nakladnaya_grid_quantity = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nakladnaya_grid_status = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nakladnaya_grid_price = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nakladnaya_grid_product = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nakladnaya_grid_date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nakladnaya_grid_dolg = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel2 = new System.Windows.Forms.Panel();
            this.otchet_2_dateTimePicker_1 = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.otchet_2 = new System.Windows.Forms.Button();
            this.otchet_listBox = new System.Windows.Forms.ListBox();
            this.otchet_2_dateTimePicker_2 = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.add_nakladnaya_company_comboBox = new System.Windows.Forms.ComboBox();
            this.add_nakladnaya_product_textBox = new System.Windows.Forms.TextBox();
            this.company_grid_name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel3 = new System.Windows.Forms.Panel();
            this.oplata_sum_textBox = new System.Windows.Forms.TextBox();
            this.oplata_id_comboBox = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.oplata_button = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.label_oplata = new System.Windows.Forms.Label();
            this.otchet_dataGridViewTextBoxColumnName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.otchet_dataGridViewTextBoxColumnOborot = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.otchet_dataGridViewTextBoxColumnDolg = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.export_excel = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.company_dataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nakladnaya_dataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.otchet_dataGridView)).BeginInit();
            this.panel4.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ButtonShadow;
            this.panel1.Controls.Add(this.add_company_textbox);
            this.panel1.Controls.Add(this.add_company_button);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(34, 325);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(249, 142);
            this.panel1.TabIndex = 0;
            // 
            // company_dataGridView
            // 
            this.company_dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.company_dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.company_grid_name});
            this.company_dataGridView.Location = new System.Drawing.Point(34, 24);
            this.company_dataGridView.Name = "company_dataGridView";
            this.company_dataGridView.RowHeadersWidth = 51;
            this.company_dataGridView.RowTemplate.Height = 24;
            this.company_dataGridView.Size = new System.Drawing.Size(259, 259);
            this.company_dataGridView.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 40);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 17);
            this.label1.TabIndex = 2;
            this.label1.Text = "Название";
            // 
            // add_company_button
            // 
            this.add_company_button.Location = new System.Drawing.Point(58, 79);
            this.add_company_button.Name = "add_company_button";
            this.add_company_button.Size = new System.Drawing.Size(120, 49);
            this.add_company_button.TabIndex = 2;
            this.add_company_button.Text = "Добавить компанию";
            this.add_company_button.UseVisualStyleBackColor = true;
            this.add_company_button.Click += new System.EventHandler(this.add_company_button_Click);
            // 
            // add_company_textbox
            // 
            this.add_company_textbox.Location = new System.Drawing.Point(96, 40);
            this.add_company_textbox.Name = "add_company_textbox";
            this.add_company_textbox.Size = new System.Drawing.Size(100, 22);
            this.add_company_textbox.TabIndex = 2;
            // 
            // nakladnaya_dataGridView
            // 
            this.nakladnaya_dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.nakladnaya_dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nakladnaya_grid_id,
            this.nakladnaya_grid_company_id,
            this.nakladnaya_grid_quantity,
            this.nakladnaya_grid_status,
            this.nakladnaya_grid_price,
            this.nakladnaya_grid_product,
            this.nakladnaya_grid_date,
            this.nakladnaya_grid_dolg});
            this.nakladnaya_dataGridView.Location = new System.Drawing.Point(367, 24);
            this.nakladnaya_dataGridView.Name = "nakladnaya_dataGridView";
            this.nakladnaya_dataGridView.RowHeadersWidth = 51;
            this.nakladnaya_dataGridView.RowTemplate.Height = 24;
            this.nakladnaya_dataGridView.Size = new System.Drawing.Size(658, 259);
            this.nakladnaya_dataGridView.TabIndex = 2;
            // 
            // otchet_dataGridView
            // 
            this.otchet_dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.otchet_dataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.otchet_dataGridViewTextBoxColumnName,
            this.otchet_dataGridViewTextBoxColumnOborot,
            this.otchet_dataGridViewTextBoxColumnDolg});
            this.otchet_dataGridView.Location = new System.Drawing.Point(666, 298);
            this.otchet_dataGridView.Name = "otchet_dataGridView";
            this.otchet_dataGridView.RowHeadersWidth = 51;
            this.otchet_dataGridView.RowTemplate.Height = 24;
            this.otchet_dataGridView.Size = new System.Drawing.Size(456, 198);
            this.otchet_dataGridView.TabIndex = 3;
            // 
            // panel4
            // 
            this.panel4.BackColor = System.Drawing.SystemColors.ControlDark;
            this.panel4.Controls.Add(this.add_nakladnaya_product_textBox);
            this.panel4.Controls.Add(this.add_nakladnaya_company_comboBox);
            this.panel4.Controls.Add(this.label3);
            this.panel4.Controls.Add(this.label2);
            this.panel4.Controls.Add(this.add_nakladnaya_price);
            this.panel4.Controls.Add(this.add_nakladnaya_button);
            this.panel4.Controls.Add(this.nakladnaya_postup_form_products);
            this.panel4.Controls.Add(this.nakladnaya_postup_form_price);
            this.panel4.Controls.Add(this.nakladnaya_postup_form_quantity);
            this.panel4.Controls.Add(this.add_nakladnaya_date);
            this.panel4.Controls.Add(this.add_nakladnaya_quantity);
            this.panel4.Location = new System.Drawing.Point(1041, 24);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(291, 262);
            this.panel4.TabIndex = 46;
            // 
            // add_nakladnaya_price
            // 
            this.add_nakladnaya_price.Location = new System.Drawing.Point(127, 78);
            this.add_nakladnaya_price.Name = "add_nakladnaya_price";
            this.add_nakladnaya_price.Size = new System.Drawing.Size(100, 22);
            this.add_nakladnaya_price.TabIndex = 19;
            // 
            // add_nakladnaya_button
            // 
            this.add_nakladnaya_button.Location = new System.Drawing.Point(55, 212);
            this.add_nakladnaya_button.Name = "add_nakladnaya_button";
            this.add_nakladnaya_button.Size = new System.Drawing.Size(167, 47);
            this.add_nakladnaya_button.TabIndex = 4;
            this.add_nakladnaya_button.Text = "Добавить накладную поступления";
            this.add_nakladnaya_button.UseVisualStyleBackColor = true;
            this.add_nakladnaya_button.Click += new System.EventHandler(this.add_nakladnaya_button_Click);
            // 
            // nakladnaya_postup_form_products
            // 
            this.nakladnaya_postup_form_products.AutoSize = true;
            this.nakladnaya_postup_form_products.BackColor = System.Drawing.Color.Transparent;
            this.nakladnaya_postup_form_products.Location = new System.Drawing.Point(33, 42);
            this.nakladnaya_postup_form_products.Name = "nakladnaya_postup_form_products";
            this.nakladnaya_postup_form_products.Size = new System.Drawing.Size(48, 17);
            this.nakladnaya_postup_form_products.TabIndex = 15;
            this.nakladnaya_postup_form_products.Text = "Товар";
            // 
            // nakladnaya_postup_form_price
            // 
            this.nakladnaya_postup_form_price.AutoSize = true;
            this.nakladnaya_postup_form_price.BackColor = System.Drawing.Color.Transparent;
            this.nakladnaya_postup_form_price.Location = new System.Drawing.Point(38, 81);
            this.nakladnaya_postup_form_price.Name = "nakladnaya_postup_form_price";
            this.nakladnaya_postup_form_price.Size = new System.Drawing.Size(43, 17);
            this.nakladnaya_postup_form_price.TabIndex = 16;
            this.nakladnaya_postup_form_price.Text = "Цена";
            // 
            // nakladnaya_postup_form_quantity
            // 
            this.nakladnaya_postup_form_quantity.AutoSize = true;
            this.nakladnaya_postup_form_quantity.BackColor = System.Drawing.Color.Transparent;
            this.nakladnaya_postup_form_quantity.Location = new System.Drawing.Point(23, 111);
            this.nakladnaya_postup_form_quantity.Name = "nakladnaya_postup_form_quantity";
            this.nakladnaya_postup_form_quantity.Size = new System.Drawing.Size(86, 17);
            this.nakladnaya_postup_form_quantity.TabIndex = 17;
            this.nakladnaya_postup_form_quantity.Text = "Количество";
            // 
            // add_nakladnaya_date
            // 
            this.add_nakladnaya_date.Location = new System.Drawing.Point(36, 171);
            this.add_nakladnaya_date.Name = "add_nakladnaya_date";
            this.add_nakladnaya_date.Size = new System.Drawing.Size(200, 22);
            this.add_nakladnaya_date.TabIndex = 18;
            this.add_nakladnaya_date.Value = new System.DateTime(2022, 6, 21, 0, 0, 0, 0);
            // 
            // add_nakladnaya_quantity
            // 
            this.add_nakladnaya_quantity.Location = new System.Drawing.Point(127, 106);
            this.add_nakladnaya_quantity.Name = "add_nakladnaya_quantity";
            this.add_nakladnaya_quantity.Size = new System.Drawing.Size(100, 22);
            this.add_nakladnaya_quantity.TabIndex = 20;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(109, 151);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(42, 17);
            this.label2.TabIndex = 3;
            this.label2.Text = "Дата";
            // 
            // nakladnaya_grid_id
            // 
            this.nakladnaya_grid_id.HeaderText = "id";
            this.nakladnaya_grid_id.MinimumWidth = 6;
            this.nakladnaya_grid_id.Name = "nakladnaya_grid_id";
            this.nakladnaya_grid_id.Width = 125;
            // 
            // nakladnaya_grid_company_id
            // 
            this.nakladnaya_grid_company_id.HeaderText = "Название компании";
            this.nakladnaya_grid_company_id.MinimumWidth = 6;
            this.nakladnaya_grid_company_id.Name = "nakladnaya_grid_company_id";
            this.nakladnaya_grid_company_id.Width = 125;
            // 
            // nakladnaya_grid_quantity
            // 
            this.nakladnaya_grid_quantity.HeaderText = "Количество";
            this.nakladnaya_grid_quantity.MinimumWidth = 6;
            this.nakladnaya_grid_quantity.Name = "nakladnaya_grid_quantity";
            this.nakladnaya_grid_quantity.Width = 125;
            // 
            // nakladnaya_grid_status
            // 
            this.nakladnaya_grid_status.HeaderText = "Статус оплаты";
            this.nakladnaya_grid_status.MinimumWidth = 6;
            this.nakladnaya_grid_status.Name = "nakladnaya_grid_status";
            this.nakladnaya_grid_status.Width = 125;
            // 
            // nakladnaya_grid_price
            // 
            this.nakladnaya_grid_price.HeaderText = "Цена товара";
            this.nakladnaya_grid_price.MinimumWidth = 6;
            this.nakladnaya_grid_price.Name = "nakladnaya_grid_price";
            this.nakladnaya_grid_price.Width = 125;
            // 
            // nakladnaya_grid_product
            // 
            this.nakladnaya_grid_product.HeaderText = "Товар";
            this.nakladnaya_grid_product.MinimumWidth = 6;
            this.nakladnaya_grid_product.Name = "nakladnaya_grid_product";
            this.nakladnaya_grid_product.Width = 125;
            // 
            // nakladnaya_grid_date
            // 
            this.nakladnaya_grid_date.HeaderText = "Дата";
            this.nakladnaya_grid_date.MinimumWidth = 6;
            this.nakladnaya_grid_date.Name = "nakladnaya_grid_date";
            this.nakladnaya_grid_date.Width = 125;
            // 
            // nakladnaya_grid_dolg
            // 
            this.nakladnaya_grid_dolg.HeaderText = "Долг";
            this.nakladnaya_grid_dolg.MinimumWidth = 6;
            this.nakladnaya_grid_dolg.Name = "nakladnaya_grid_dolg";
            this.nakladnaya_grid_dolg.Width = 125;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.ControlDark;
            this.panel2.Controls.Add(this.otchet_2_dateTimePicker_1);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.otchet_2);
            this.panel2.Controls.Add(this.otchet_listBox);
            this.panel2.Controls.Add(this.otchet_2_dateTimePicker_2);
            this.panel2.Location = new System.Drawing.Point(349, 297);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(296, 199);
            this.panel2.TabIndex = 47;
            // 
            // otchet_2_dateTimePicker_1
            // 
            this.otchet_2_dateTimePicker_1.Location = new System.Drawing.Point(20, 13);
            this.otchet_2_dateTimePicker_1.Name = "otchet_2_dateTimePicker_1";
            this.otchet_2_dateTimePicker_1.Size = new System.Drawing.Size(199, 22);
            this.otchet_2_dateTimePicker_1.TabIndex = 38;
            this.otchet_2_dateTimePicker_1.Value = new System.DateTime(2022, 6, 21, 0, 0, 0, 0);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Location = new System.Drawing.Point(107, 86);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(189, 17);
            this.label4.TabIndex = 41;
            this.label4.Text = "Производители для отчета";
            // 
            // otchet_2
            // 
            this.otchet_2.Location = new System.Drawing.Point(20, 122);
            this.otchet_2.Name = "otchet_2";
            this.otchet_2.Size = new System.Drawing.Size(100, 48);
            this.otchet_2.TabIndex = 37;
            this.otchet_2.Text = "Отчет за период";
            this.otchet_2.UseVisualStyleBackColor = true;
            this.otchet_2.Click += new System.EventHandler(this.otchet_2_Click);
            // 
            // otchet_listBox
            // 
            this.otchet_listBox.FormattingEnabled = true;
            this.otchet_listBox.ItemHeight = 16;
            this.otchet_listBox.Location = new System.Drawing.Point(156, 106);
            this.otchet_listBox.Name = "otchet_listBox";
            this.otchet_listBox.SelectionMode = System.Windows.Forms.SelectionMode.MultiSimple;
            this.otchet_listBox.Size = new System.Drawing.Size(120, 84);
            this.otchet_listBox.TabIndex = 40;
            // 
            // otchet_2_dateTimePicker_2
            // 
            this.otchet_2_dateTimePicker_2.Location = new System.Drawing.Point(20, 49);
            this.otchet_2_dateTimePicker_2.Name = "otchet_2_dateTimePicker_2";
            this.otchet_2_dateTimePicker_2.Size = new System.Drawing.Size(200, 22);
            this.otchet_2_dateTimePicker_2.TabIndex = 39;
            this.otchet_2_dateTimePicker_2.Value = new System.DateTime(2022, 6, 21, 0, 0, 0, 0);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Location = new System.Drawing.Point(3, 10);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(110, 17);
            this.label3.TabIndex = 21;
            this.label3.Text = "Производитель";
            // 
            // add_nakladnaya_company_comboBox
            // 
            this.add_nakladnaya_company_comboBox.FormattingEnabled = true;
            this.add_nakladnaya_company_comboBox.Location = new System.Drawing.Point(119, 10);
            this.add_nakladnaya_company_comboBox.Name = "add_nakladnaya_company_comboBox";
            this.add_nakladnaya_company_comboBox.Size = new System.Drawing.Size(121, 24);
            this.add_nakladnaya_company_comboBox.TabIndex = 22;
            // 
            // add_nakladnaya_product_textBox
            // 
            this.add_nakladnaya_product_textBox.Location = new System.Drawing.Point(122, 42);
            this.add_nakladnaya_product_textBox.Name = "add_nakladnaya_product_textBox";
            this.add_nakladnaya_product_textBox.Size = new System.Drawing.Size(100, 22);
            this.add_nakladnaya_product_textBox.TabIndex = 23;
            // 
            // company_grid_name
            // 
            this.company_grid_name.HeaderText = "Название компании";
            this.company_grid_name.MinimumWidth = 6;
            this.company_grid_name.Name = "company_grid_name";
            this.company_grid_name.Width = 125;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.ControlDark;
            this.panel3.Controls.Add(this.label_oplata);
            this.panel3.Controls.Add(this.oplata_sum_textBox);
            this.panel3.Controls.Add(this.oplata_id_comboBox);
            this.panel3.Controls.Add(this.label5);
            this.panel3.Controls.Add(this.oplata_button);
            this.panel3.Controls.Add(this.label7);
            this.panel3.Location = new System.Drawing.Point(1137, 298);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(214, 189);
            this.panel3.TabIndex = 47;
            // 
            // oplata_sum_textBox
            // 
            this.oplata_sum_textBox.Location = new System.Drawing.Point(95, 42);
            this.oplata_sum_textBox.Name = "oplata_sum_textBox";
            this.oplata_sum_textBox.Size = new System.Drawing.Size(100, 22);
            this.oplata_sum_textBox.TabIndex = 23;
            // 
            // oplata_id_comboBox
            // 
            this.oplata_id_comboBox.FormattingEnabled = true;
            this.oplata_id_comboBox.Location = new System.Drawing.Point(101, 10);
            this.oplata_id_comboBox.Name = "oplata_id_comboBox";
            this.oplata_id_comboBox.Size = new System.Drawing.Size(94, 24);
            this.oplata_id_comboBox.TabIndex = 22;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Location = new System.Drawing.Point(3, 10);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(94, 17);
            this.label5.TabIndex = 21;
            this.label5.Text = "id накладной";
            // 
            // oplata_button
            // 
            this.oplata_button.Location = new System.Drawing.Point(23, 121);
            this.oplata_button.Name = "oplata_button";
            this.oplata_button.Size = new System.Drawing.Size(167, 47);
            this.oplata_button.TabIndex = 4;
            this.oplata_button.Text = "Оплатить";
            this.oplata_button.UseVisualStyleBackColor = true;
            this.oplata_button.Click += new System.EventHandler(this.oplata_button_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.BackColor = System.Drawing.Color.Transparent;
            this.label7.Location = new System.Drawing.Point(20, 42);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(50, 17);
            this.label7.TabIndex = 15;
            this.label7.Text = "Сумма";
            this.label7.Click += new System.EventHandler(this.label7_Click);
            // 
            // label_oplata
            // 
            this.label_oplata.AutoSize = true;
            this.label_oplata.BackColor = System.Drawing.Color.Transparent;
            this.label_oplata.Location = new System.Drawing.Point(82, 86);
            this.label_oplata.Name = "label_oplata";
            this.label_oplata.Size = new System.Drawing.Size(0, 17);
            this.label_oplata.TabIndex = 24;
            // 
            // otchet_dataGridViewTextBoxColumnName
            // 
            this.otchet_dataGridViewTextBoxColumnName.HeaderText = "Производитель";
            this.otchet_dataGridViewTextBoxColumnName.MinimumWidth = 6;
            this.otchet_dataGridViewTextBoxColumnName.Name = "otchet_dataGridViewTextBoxColumnName";
            this.otchet_dataGridViewTextBoxColumnName.Width = 125;
            // 
            // otchet_dataGridViewTextBoxColumnOborot
            // 
            this.otchet_dataGridViewTextBoxColumnOborot.HeaderText = "Оборот";
            this.otchet_dataGridViewTextBoxColumnOborot.MinimumWidth = 6;
            this.otchet_dataGridViewTextBoxColumnOborot.Name = "otchet_dataGridViewTextBoxColumnOborot";
            this.otchet_dataGridViewTextBoxColumnOborot.Width = 125;
            // 
            // otchet_dataGridViewTextBoxColumnDolg
            // 
            this.otchet_dataGridViewTextBoxColumnDolg.HeaderText = "Долг";
            this.otchet_dataGridViewTextBoxColumnDolg.MinimumWidth = 6;
            this.otchet_dataGridViewTextBoxColumnDolg.Name = "otchet_dataGridViewTextBoxColumnDolg";
            this.otchet_dataGridViewTextBoxColumnDolg.Width = 125;
            // 
            // export_excel
            // 
            this.export_excel.Location = new System.Drawing.Point(295, 81);
            this.export_excel.Name = "export_excel";
            this.export_excel.Size = new System.Drawing.Size(72, 64);
            this.export_excel.TabIndex = 48;
            this.export_excel.Text = "Экспорт Excel";
            this.export_excel.UseVisualStyleBackColor = true;
            this.export_excel.Click += new System.EventHandler(this.export_excel_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1363, 520);
            this.Controls.Add(this.export_excel);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.otchet_dataGridView);
            this.Controls.Add(this.nakladnaya_dataGridView);
            this.Controls.Add(this.company_dataGridView);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.company_dataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nakladnaya_dataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.otchet_dataGridView)).EndInit();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView company_dataGridView;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox add_company_textbox;
        private System.Windows.Forms.Button add_company_button;
        private System.Windows.Forms.DataGridView nakladnaya_dataGridView;
        private System.Windows.Forms.DataGridView otchet_dataGridView;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox add_nakladnaya_price;
        private System.Windows.Forms.Button add_nakladnaya_button;
        private System.Windows.Forms.Label nakladnaya_postup_form_products;
        private System.Windows.Forms.Label nakladnaya_postup_form_price;
        private System.Windows.Forms.Label nakladnaya_postup_form_quantity;
        private System.Windows.Forms.DateTimePicker add_nakladnaya_date;
        private System.Windows.Forms.TextBox add_nakladnaya_quantity;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_company_id;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_quantity;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_status;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_price;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_product;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_date;
        private System.Windows.Forms.DataGridViewTextBoxColumn nakladnaya_grid_dolg;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DateTimePicker otchet_2_dateTimePicker_1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button otchet_2;
        private System.Windows.Forms.ListBox otchet_listBox;
        private System.Windows.Forms.DateTimePicker otchet_2_dateTimePicker_2;
        private System.Windows.Forms.ComboBox add_nakladnaya_company_comboBox;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox add_nakladnaya_product_textBox;
        private System.Windows.Forms.DataGridViewTextBoxColumn company_grid_name;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.TextBox oplata_sum_textBox;
        private System.Windows.Forms.ComboBox oplata_id_comboBox;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button oplata_button;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label_oplata;
        private System.Windows.Forms.DataGridViewTextBoxColumn otchet_dataGridViewTextBoxColumnName;
        private System.Windows.Forms.DataGridViewTextBoxColumn otchet_dataGridViewTextBoxColumnOborot;
        private System.Windows.Forms.DataGridViewTextBoxColumn otchet_dataGridViewTextBoxColumnDolg;
        private System.Windows.Forms.Button export_excel;
    }
}

