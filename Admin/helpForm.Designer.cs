
namespace Login
{
    partial class helpForm
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
            this.body_txtbox = new System.Windows.Forms.RichTextBox();
            this.send = new System.Windows.Forms.Button();
            this.mail_txtbox = new System.Windows.Forms.TextBox();
            this.subject_txtbox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.close = new System.Windows.Forms.Button();
            this.pass_txtbox = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // body_txtbox
            // 
            this.body_txtbox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.body_txtbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F);
            this.body_txtbox.Location = new System.Drawing.Point(16, 290);
            this.body_txtbox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.body_txtbox.Name = "body_txtbox";
            this.body_txtbox.Size = new System.Drawing.Size(591, 248);
            this.body_txtbox.TabIndex = 0;
            this.body_txtbox.Text = "";
            // 
            // send
            // 
            this.send.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.send.Font = new System.Drawing.Font("Perpetua Titling MT", 11F, System.Drawing.FontStyle.Bold);
            this.send.Location = new System.Drawing.Point(437, 549);
            this.send.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.send.Name = "send";
            this.send.Size = new System.Drawing.Size(171, 41);
            this.send.TabIndex = 1;
            this.send.Text = "Küldés";
            this.send.UseVisualStyleBackColor = true;
            this.send.Click += new System.EventHandler(this.send_Click);
            // 
            // mail_txtbox
            // 
            this.mail_txtbox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.mail_txtbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.mail_txtbox.Location = new System.Drawing.Point(155, 60);
            this.mail_txtbox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.mail_txtbox.Name = "mail_txtbox";
            this.mail_txtbox.Size = new System.Drawing.Size(393, 28);
            this.mail_txtbox.TabIndex = 2;
            // 
            // subject_txtbox
            // 
            this.subject_txtbox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.subject_txtbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.subject_txtbox.Location = new System.Drawing.Point(155, 148);
            this.subject_txtbox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.subject_txtbox.Name = "subject_txtbox";
            this.subject_txtbox.Size = new System.Drawing.Size(393, 28);
            this.subject_txtbox.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label1.Location = new System.Drawing.Point(16, 62);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(123, 25);
            this.label1.TabIndex = 4;
            this.label1.Text = "Email címed:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label2.Location = new System.Drawing.Point(53, 148);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 25);
            this.label2.TabIndex = 5;
            this.label2.Text = "Tárgy:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label3.Location = new System.Drawing.Point(16, 262);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 25);
            this.label3.TabIndex = 6;
            this.label3.Text = "Üzenet:";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.panel1.Controls.Add(this.flowLayoutPanel1);
            this.panel1.Controls.Add(this.close);
            this.panel1.Location = new System.Drawing.Point(-5, -4);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(635, 42);
            this.panel1.TabIndex = 7;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 59);
            this.flowLayoutPanel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(359, 469);
            this.flowLayoutPanel1.TabIndex = 1;
            // 
            // close
            // 
            this.close.BackColor = System.Drawing.Color.Red;
            this.close.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.close.ForeColor = System.Drawing.SystemColors.MenuText;
            this.close.Location = new System.Drawing.Point(555, 10);
            this.close.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.close.Name = "close";
            this.close.Size = new System.Drawing.Size(56, 30);
            this.close.TabIndex = 17;
            this.close.Text = "X";
            this.close.UseVisualStyleBackColor = false;
            this.close.Click += new System.EventHandler(this.close_Click);
            // 
            // pass_txtbox
            // 
            this.pass_txtbox.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pass_txtbox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F);
            this.pass_txtbox.Location = new System.Drawing.Point(155, 97);
            this.pass_txtbox.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pass_txtbox.Name = "pass_txtbox";
            this.pass_txtbox.PasswordChar = '*';
            this.pass_txtbox.Size = new System.Drawing.Size(393, 28);
            this.pass_txtbox.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.label4.Location = new System.Drawing.Point(45, 98);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(75, 25);
            this.label4.TabIndex = 9;
            this.label4.Text = "Jelszó:";
            // 
            // helpForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(624, 604);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.pass_txtbox);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.subject_txtbox);
            this.Controls.Add(this.mail_txtbox);
            this.Controls.Add(this.send);
            this.Controls.Add(this.body_txtbox);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "helpForm";
            this.Text = "helpForm";
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RichTextBox body_txtbox;
        private System.Windows.Forms.Button send;
        private System.Windows.Forms.TextBox mail_txtbox;
        private System.Windows.Forms.TextBox subject_txtbox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Button close;
        private System.Windows.Forms.TextBox pass_txtbox;
        private System.Windows.Forms.Label label4;
    }
}