
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
            this.exit_btn = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.asd = new Login.asd();
            this.asdBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.getbrandBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.getbrandTableAdapter = new Login.asdTableAdapters.getbrandTableAdapter();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.arDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.brandnameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.imgDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.asd)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.asdBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.getbrandBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // exit_btn
            // 
            this.exit_btn.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold);
            this.exit_btn.Location = new System.Drawing.Point(12, 409);
            this.exit_btn.Name = "exit_btn";
            this.exit_btn.Size = new System.Drawing.Size(79, 29);
            this.exit_btn.TabIndex = 0;
            this.exit_btn.Text = "Exit";
            this.exit_btn.UseVisualStyleBackColor = true;
            this.exit_btn.Click += new System.EventHandler(this.exit_btn_Click);
            // 
            // button2
            // 
            this.button2.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold);
            this.button2.Location = new System.Drawing.Point(43, 46);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(153, 47);
            this.button2.TabIndex = 1;
            this.button2.Text = "Felhasználók";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(43, 115);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(153, 48);
            this.button3.TabIndex = 2;
            this.button3.Text = "Termékek";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold);
            this.button4.Location = new System.Drawing.Point(43, 184);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(153, 46);
            this.button4.TabIndex = 3;
            this.button4.Text = "button4";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Font = new System.Drawing.Font("Perpetua Titling MT", 9F, System.Drawing.FontStyle.Bold);
            this.button5.Location = new System.Drawing.Point(43, 264);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(153, 43);
            this.button5.TabIndex = 4;
            this.button5.Text = "button5";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nameDataGridViewTextBoxColumn,
            this.arDataGridViewTextBoxColumn,
            this.brandnameDataGridViewTextBoxColumn,
            this.imgDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.getbrandBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(246, 1);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(554, 451);
            this.dataGridView1.TabIndex = 5;
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
            // getbrandBindingSource
            // 
            this.getbrandBindingSource.DataMember = "getbrand";
            this.getbrandBindingSource.DataSource = this.asd;
            // 
            // getbrandTableAdapter
            // 
            this.getbrandTableAdapter.ClearBeforeFill = true;
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "name";
            this.nameDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            this.nameDataGridViewTextBoxColumn.Width = 125;
            // 
            // arDataGridViewTextBoxColumn
            // 
            this.arDataGridViewTextBoxColumn.DataPropertyName = "ar";
            this.arDataGridViewTextBoxColumn.HeaderText = "ar";
            this.arDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.arDataGridViewTextBoxColumn.Name = "arDataGridViewTextBoxColumn";
            this.arDataGridViewTextBoxColumn.Width = 125;
            // 
            // brandnameDataGridViewTextBoxColumn
            // 
            this.brandnameDataGridViewTextBoxColumn.DataPropertyName = "brand_name";
            this.brandnameDataGridViewTextBoxColumn.HeaderText = "brand_name";
            this.brandnameDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.brandnameDataGridViewTextBoxColumn.Name = "brandnameDataGridViewTextBoxColumn";
            this.brandnameDataGridViewTextBoxColumn.Width = 125;
            // 
            // imgDataGridViewTextBoxColumn
            // 
            this.imgDataGridViewTextBoxColumn.DataPropertyName = "img";
            this.imgDataGridViewTextBoxColumn.HeaderText = "img";
            this.imgDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.imgDataGridViewTextBoxColumn.Name = "imgDataGridViewTextBoxColumn";
            this.imgDataGridViewTextBoxColumn.Width = 125;
            // 
            // mainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.exit_btn);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "mainForm";
            this.Text = "Menü";
            this.Load += new System.EventHandler(this.mainForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.asd)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.asdBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.getbrandBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button exit_btn;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.BindingSource asdBindingSource;
        private asd asd;
        private System.Windows.Forms.BindingSource getbrandBindingSource;
        private asdTableAdapters.getbrandTableAdapter getbrandTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn arDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn brandnameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn imgDataGridViewTextBoxColumn;
    }
}