﻿
namespace Login
{
    partial class mainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            this.logout_btn = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.getbrandBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.asd = new Login.asd();
            this.asdBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.getbrandTableAdapter = new Login.asdTableAdapters.getbrandTableAdapter();
            this.users = new Login.users();
            this.usersBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.usersTableAdapter = new Login.usersTableAdapters.usersTableAdapter();
            this.osszes = new Login.osszes();
            this.osszesBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.usersBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.usersTableAdapter1 = new Login.osszesTableAdapters.usersTableAdapter();
            this.getbrandBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.getbrandTableAdapter1 = new Login.osszesTableAdapters.getbrandTableAdapter();
            this.usersBindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.otherT_cbox = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.help_btn = new System.Windows.Forms.Button();
            this.minimize = new System.Windows.Forms.Button();
            this.fils_combo_box = new System.Windows.Forms.ComboBox();
            this.search_box = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.exit_btn = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.delete_btn = new System.Windows.Forms.Button();
            this.add_product = new System.Windows.Forms.Button();
            this.userT_btn = new System.Windows.Forms.Button();
            this.orderT_btn = new System.Windows.Forms.Button();
            this.productT_btn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.getbrandBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.asd)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.asdBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.users)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.usersBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.osszes)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.osszesBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.usersBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.getbrandBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.usersBindingSource2)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // logout_btn
            // 
            this.logout_btn.BackColor = System.Drawing.SystemColors.Control;
            this.logout_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.logout_btn.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold);
            this.logout_btn.Location = new System.Drawing.Point(-1, 470);
            this.logout_btn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.logout_btn.Name = "logout_btn";
            this.logout_btn.Size = new System.Drawing.Size(245, 33);
            this.logout_btn.TabIndex = 0;
            this.logout_btn.Text = "Kijelentkezés";
            this.logout_btn.UseVisualStyleBackColor = false;
            this.logout_btn.Click += new System.EventHandler(this.logout_btn_click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.ControlLightLight;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.MediumAquamarine;
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Cursor = System.Windows.Forms.Cursors.Default;
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.Color.MediumAquamarine;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle5;
            this.dataGridView1.GridColor = System.Drawing.Color.MediumAquamarine;
            this.dataGridView1.Location = new System.Drawing.Point(244, 55);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.Padding = new System.Windows.Forms.Padding(10);
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.Color.MediumAquamarine;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dataGridView1.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(1007, 450);
            this.dataGridView1.TabIndex = 5;
            this.dataGridView1.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.CellEndEdit);
            // 
            // getbrandBindingSource
            // 
            this.getbrandBindingSource.DataMember = "getbrand";
            this.getbrandBindingSource.DataSource = this.asd;
            // 
            // asd
            // 
            this.asd.DataSetName = "asd";
            this.asd.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // asdBindingSource
            // 
            this.asdBindingSource.DataSource = this.asd;
            this.asdBindingSource.Position = 0;
            // 
            // getbrandTableAdapter
            // 
            this.getbrandTableAdapter.ClearBeforeFill = true;
            // 
            // users
            // 
            this.users.DataSetName = "users";
            this.users.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // usersBindingSource
            // 
            this.usersBindingSource.DataMember = "users";
            this.usersBindingSource.DataSource = this.users;
            // 
            // usersTableAdapter
            // 
            this.usersTableAdapter.ClearBeforeFill = true;
            // 
            // osszes
            // 
            this.osszes.DataSetName = "osszes";
            this.osszes.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // osszesBindingSource
            // 
            this.osszesBindingSource.DataSource = this.osszes;
            this.osszesBindingSource.Position = 0;
            // 
            // usersBindingSource1
            // 
            this.usersBindingSource1.DataMember = "users";
            this.usersBindingSource1.DataSource = this.osszesBindingSource;
            // 
            // usersTableAdapter1
            // 
            this.usersTableAdapter1.ClearBeforeFill = true;
            // 
            // getbrandBindingSource1
            // 
            this.getbrandBindingSource1.DataMember = "getbrand";
            this.getbrandBindingSource1.DataSource = this.osszesBindingSource;
            // 
            // getbrandTableAdapter1
            // 
            this.getbrandTableAdapter1.ClearBeforeFill = true;
            // 
            // usersBindingSource2
            // 
            this.usersBindingSource2.DataMember = "users";
            this.usersBindingSource2.DataSource = this.osszesBindingSource;
            // 
            // otherT_cbox
            // 
            this.otherT_cbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.otherT_cbox.FormattingEnabled = true;
            this.otherT_cbox.Location = new System.Drawing.Point(45, 321);
            this.otherT_cbox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.otherT_cbox.Name = "otherT_cbox";
            this.otherT_cbox.Size = new System.Drawing.Size(153, 30);
            this.otherT_cbox.TabIndex = 6;
            this.otherT_cbox.SelectedIndexChanged += new System.EventHandler(this.otherT_cbox_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.ControlLight;
            this.label1.Location = new System.Drawing.Point(43, 302);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(90, 17);
            this.label1.TabIndex = 7;
            this.label1.Text = "Egyéb táblák";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.panel1.Controls.Add(this.help_btn);
            this.panel1.Controls.Add(this.minimize);
            this.panel1.Controls.Add(this.fils_combo_box);
            this.panel1.Controls.Add(this.search_box);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Controls.Add(this.exit_btn);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Location = new System.Drawing.Point(-1, 1);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1252, 55);
            this.panel1.TabIndex = 10;
            this.panel1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseDown);
            this.panel1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseMove);
            this.panel1.MouseUp += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseUp);
            // 
            // help_btn
            // 
            this.help_btn.BackColor = System.Drawing.Color.DarkGray;
            this.help_btn.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.help_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.help_btn.ForeColor = System.Drawing.SystemColors.Desktop;
            this.help_btn.Location = new System.Drawing.Point(1087, 14);
            this.help_btn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.help_btn.Name = "help_btn";
            this.help_btn.Size = new System.Drawing.Size(47, 31);
            this.help_btn.TabIndex = 13;
            this.help_btn.Text = "?";
            this.help_btn.UseVisualStyleBackColor = false;
            this.help_btn.Click += new System.EventHandler(this.help_btn_Click);
            // 
            // minimize
            // 
            this.minimize.BackColor = System.Drawing.Color.DarkGray;
            this.minimize.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.minimize.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.minimize.ForeColor = System.Drawing.SystemColors.Desktop;
            this.minimize.Location = new System.Drawing.Point(1139, 14);
            this.minimize.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.minimize.Name = "minimize";
            this.minimize.Size = new System.Drawing.Size(47, 31);
            this.minimize.TabIndex = 12;
            this.minimize.Text = "_";
            this.minimize.UseVisualStyleBackColor = false;
            this.minimize.Click += new System.EventHandler(this.minimize_Click);
            // 
            // fils_combo_box
            // 
            this.fils_combo_box.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.fils_combo_box.FormattingEnabled = true;
            this.fils_combo_box.Location = new System.Drawing.Point(556, 14);
            this.fils_combo_box.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.fils_combo_box.Name = "fils_combo_box";
            this.fils_combo_box.Size = new System.Drawing.Size(153, 30);
            this.fils_combo_box.TabIndex = 9;
            this.fils_combo_box.SelectedIndexChanged += new System.EventHandler(this.fils_combo_box_SelectedIndexChanged);
            // 
            // search_box
            // 
            this.search_box.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.search_box.Location = new System.Drawing.Point(365, 14);
            this.search_box.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.search_box.Name = "search_box";
            this.search_box.Size = new System.Drawing.Size(185, 30);
            this.search_box.TabIndex = 3;
            this.search_box.TextChanged += new System.EventHandler(this.search_box_TextChanged);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Login.Properties.Resources.Logo_pic;
            this.pictureBox1.Location = new System.Drawing.Point(3, 6);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(61, 46);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 2;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseDown);
            this.pictureBox1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseMove);
            this.pictureBox1.MouseUp += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseUp);
            // 
            // exit_btn
            // 
            this.exit_btn.BackColor = System.Drawing.Color.Red;
            this.exit_btn.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.exit_btn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.exit_btn.ForeColor = System.Drawing.SystemColors.Desktop;
            this.exit_btn.Location = new System.Drawing.Point(1192, 14);
            this.exit_btn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.exit_btn.Name = "exit_btn";
            this.exit_btn.Size = new System.Drawing.Size(47, 30);
            this.exit_btn.TabIndex = 1;
            this.exit_btn.Text = "X";
            this.exit_btn.UseVisualStyleBackColor = false;
            this.exit_btn.Click += new System.EventHandler(this.exit_btn_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Perpetua Titling MT", 15F, System.Drawing.FontStyle.Bold);
            this.label2.ForeColor = System.Drawing.Color.Cyan;
            this.label2.Location = new System.Drawing.Point(59, 14);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(205, 30);
            this.label2.TabIndex = 0;
            this.label2.Text = "Admin panel";
            this.label2.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseDown);
            this.label2.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseMove);
            this.label2.MouseUp += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseUp);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.ControlLight;
            this.panel2.Controls.Add(this.delete_btn);
            this.panel2.Controls.Add(this.add_product);
            this.panel2.Controls.Add(this.userT_btn);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Controls.Add(this.otherT_cbox);
            this.panel2.Controls.Add(this.orderT_btn);
            this.panel2.Controls.Add(this.productT_btn);
            this.panel2.Location = new System.Drawing.Point(-1, 55);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(245, 450);
            this.panel2.TabIndex = 11;
            // 
            // delete_btn
            // 
            this.delete_btn.BackColor = System.Drawing.SystemColors.Control;
            this.delete_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.delete_btn.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.delete_btn.Image = global::Login.Properties.Resources.file_reduce_line;
            this.delete_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.delete_btn.Location = new System.Drawing.Point(0, 230);
            this.delete_btn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.delete_btn.Name = "delete_btn";
            this.delete_btn.Size = new System.Drawing.Size(245, 48);
            this.delete_btn.TabIndex = 10;
            this.delete_btn.Text = "Sor törlése";
            this.delete_btn.UseVisualStyleBackColor = false;
            this.delete_btn.Click += new System.EventHandler(this.delete_btn_Click);
            // 
            // add_product
            // 
            this.add_product.BackColor = System.Drawing.SystemColors.Control;
            this.add_product.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.add_product.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.add_product.Image = global::Login.Properties.Resources.file_add_line;
            this.add_product.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.add_product.Location = new System.Drawing.Point(0, 176);
            this.add_product.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.add_product.Name = "add_product";
            this.add_product.Size = new System.Drawing.Size(245, 48);
            this.add_product.TabIndex = 9;
            this.add_product.Text = "Sor felvétele";
            this.add_product.UseVisualStyleBackColor = false;
            this.add_product.Click += new System.EventHandler(this.add_product_Click);
            // 
            // userT_btn
            // 
            this.userT_btn.BackColor = System.Drawing.SystemColors.Control;
            this.userT_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.userT_btn.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold);
            this.userT_btn.Image = global::Login.Properties.Resources.id_card_line;
            this.userT_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.userT_btn.Location = new System.Drawing.Point(0, 0);
            this.userT_btn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.userT_btn.Name = "userT_btn";
            this.userT_btn.Size = new System.Drawing.Size(245, 47);
            this.userT_btn.TabIndex = 1;
            this.userT_btn.Text = "Felhasználók";
            this.userT_btn.UseVisualStyleBackColor = false;
            this.userT_btn.Click += new System.EventHandler(this.userT_btn_Click);
            // 
            // orderT_btn
            // 
            this.orderT_btn.BackColor = System.Drawing.SystemColors.Control;
            this.orderT_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.orderT_btn.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.orderT_btn.Image = global::Login.Properties.Resources.luggage_cart_line;
            this.orderT_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.orderT_btn.Location = new System.Drawing.Point(0, 107);
            this.orderT_btn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.orderT_btn.Name = "orderT_btn";
            this.orderT_btn.Size = new System.Drawing.Size(245, 48);
            this.orderT_btn.TabIndex = 8;
            this.orderT_btn.Text = "Rendelések";
            this.orderT_btn.UseVisualStyleBackColor = false;
            this.orderT_btn.Click += new System.EventHandler(this.orderT_btn_Click);
            // 
            // productT_btn
            // 
            this.productT_btn.BackColor = System.Drawing.SystemColors.Control;
            this.productT_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.productT_btn.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.productT_btn.Image = global::Login.Properties.Resources.store_3_line;
            this.productT_btn.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.productT_btn.Location = new System.Drawing.Point(0, 53);
            this.productT_btn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.productT_btn.Name = "productT_btn";
            this.productT_btn.Size = new System.Drawing.Size(245, 48);
            this.productT_btn.TabIndex = 2;
            this.productT_btn.Text = "Termékek";
            this.productT_btn.UseVisualStyleBackColor = false;
            this.productT_btn.Click += new System.EventHandler(this.productT_btn_Click);
            // 
            // mainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(1251, 505);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.logout_btn);
            this.Controls.Add(this.panel2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "mainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Menü";
            this.Load += new System.EventHandler(this.mainForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.getbrandBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.asd)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.asdBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.users)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.usersBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.osszes)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.osszesBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.usersBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.getbrandBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.usersBindingSource2)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button logout_btn;
        private System.Windows.Forms.Button userT_btn;
        private System.Windows.Forms.Button productT_btn;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.BindingSource asdBindingSource;
        private asd asd;
        private System.Windows.Forms.BindingSource getbrandBindingSource;
        private asdTableAdapters.getbrandTableAdapter getbrandTableAdapter;
        private users users;
        private System.Windows.Forms.BindingSource usersBindingSource;
        private usersTableAdapters.usersTableAdapter usersTableAdapter;
        private System.Windows.Forms.BindingSource osszesBindingSource;
        private osszes osszes;
        private System.Windows.Forms.BindingSource usersBindingSource1;
        private osszesTableAdapters.usersTableAdapter usersTableAdapter1;
        private System.Windows.Forms.BindingSource getbrandBindingSource1;
        private osszesTableAdapters.getbrandTableAdapter getbrandTableAdapter1;
        private System.Windows.Forms.BindingSource usersBindingSource2;
        private System.Windows.Forms.ComboBox otherT_cbox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button orderT_btn;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button exit_btn;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TextBox search_box;
        private System.Windows.Forms.ComboBox fils_combo_box;
        private System.Windows.Forms.Button minimize;
        private System.Windows.Forms.Button add_product;
        private System.Windows.Forms.Button delete_btn;
        private System.Windows.Forms.Button help_btn;
    }
}