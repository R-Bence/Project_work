
namespace Login
{
    partial class login
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
            this.txt_user_email = new System.Windows.Forms.TextBox();
            this.txt_user_pass = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.close = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.pictureBox4 = new System.Windows.Forms.PictureBox();
            this.label2 = new System.Windows.Forms.Label();
            this.eyes = new System.Windows.Forms.Button();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.minimize = new System.Windows.Forms.Button();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_user_email
            // 
            this.txt_user_email.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.txt_user_email.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txt_user_email.Font = new System.Drawing.Font("Century Schoolbook", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txt_user_email.Location = new System.Drawing.Point(112, 267);
            this.txt_user_email.Margin = new System.Windows.Forms.Padding(4);
            this.txt_user_email.Name = "txt_user_email";
            this.txt_user_email.Size = new System.Drawing.Size(195, 31);
            this.txt_user_email.TabIndex = 1;
            this.txt_user_email.KeyDown += new System.Windows.Forms.KeyEventHandler(this.text_Onpress);
            // 
            // txt_user_pass
            // 
            this.txt_user_pass.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.txt_user_pass.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txt_user_pass.Font = new System.Drawing.Font("Century Schoolbook", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.txt_user_pass.Location = new System.Drawing.Point(113, 337);
            this.txt_user_pass.Margin = new System.Windows.Forms.Padding(4);
            this.txt_user_pass.Name = "txt_user_pass";
            this.txt_user_pass.PasswordChar = '*';
            this.txt_user_pass.Size = new System.Drawing.Size(195, 31);
            this.txt_user_pass.TabIndex = 2;
            this.txt_user_pass.Enter += new System.EventHandler(this.show_eye);
            this.txt_user_pass.KeyDown += new System.Windows.Forms.KeyEventHandler(this.text_Onpress);
            this.txt_user_pass.Leave += new System.EventHandler(this.hide_eye);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.White;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button1.Font = new System.Drawing.Font("Century Schoolbook", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.button1.Location = new System.Drawing.Point(78, 396);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(229, 37);
            this.button1.TabIndex = 3;
            this.button1.Text = "Belépés";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button2.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(78, 441);
            this.button2.Margin = new System.Windows.Forms.Padding(4);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(229, 28);
            this.button2.TabIndex = 4;
            this.button2.Text = "Törlés";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.DarkCyan;
            this.panel2.Location = new System.Drawing.Point(78, 366);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(229, 3);
            this.panel2.TabIndex = 7;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkCyan;
            this.panel1.Location = new System.Drawing.Point(78, 295);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(229, 3);
            this.panel1.TabIndex = 10;
            // 
            // close
            // 
            this.close.BackColor = System.Drawing.Color.Red;
            this.close.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.close.ForeColor = System.Drawing.SystemColors.MenuText;
            this.close.Location = new System.Drawing.Point(343, 17);
            this.close.Name = "close";
            this.close.Size = new System.Drawing.Size(56, 29);
            this.close.TabIndex = 13;
            this.close.Text = "X";
            this.close.UseVisualStyleBackColor = false;
            this.close.Click += new System.EventHandler(this.button3_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.label1.Font = new System.Drawing.Font("Century Schoolbook", 18F);
            this.label1.ForeColor = System.Drawing.Color.Cyan;
            this.label1.Location = new System.Drawing.Point(74, 14);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(122, 35);
            this.label1.TabIndex = 14;
            this.label1.Text = "Belépés";
            this.label1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseDown);
            this.label1.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseMove);
            this.label1.MouseUp += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseUp);
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.panel3.Controls.Add(this.minimize);
            this.panel3.Controls.Add(this.pictureBox4);
            this.panel3.Controls.Add(this.close);
            this.panel3.Controls.Add(this.label1);
            this.panel3.Location = new System.Drawing.Point(-13, -5);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(425, 57);
            this.panel3.TabIndex = 15;
            this.panel3.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseDown);
            this.panel3.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseMove);
            this.panel3.MouseUp += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseUp);
            // 
            // pictureBox4
            // 
            this.pictureBox4.Image = global::Login.Properties.Resources.Logo_pic;
            this.pictureBox4.Location = new System.Drawing.Point(18, 8);
            this.pictureBox4.Name = "pictureBox4";
            this.pictureBox4.Size = new System.Drawing.Size(61, 46);
            this.pictureBox4.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox4.TabIndex = 15;
            this.pictureBox4.TabStop = false;
            this.pictureBox4.MouseDown += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseDown);
            this.pictureBox4.MouseMove += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseMove);
            this.pictureBox4.MouseUp += new System.Windows.Forms.MouseEventHandler(this.panel_header_MouseUp);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Century Schoolbook", 18F);
            this.label2.ForeColor = System.Drawing.Color.DarkCyan;
            this.label2.Location = new System.Drawing.Point(107, 200);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(178, 35);
            this.label2.TabIndex = 16;
            this.label2.Text = "MobileMart";
            // 
            // eyes
            // 
            this.eyes.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.eyes.FlatAppearance.BorderColor = System.Drawing.SystemColors.ControlLightLight;
            this.eyes.FlatAppearance.MouseDownBackColor = System.Drawing.SystemColors.ControlLightLight;
            this.eyes.FlatAppearance.MouseOverBackColor = System.Drawing.SystemColors.ControlLightLight;
            this.eyes.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.eyes.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.eyes.Location = new System.Drawing.Point(303, 335);
            this.eyes.Name = "eyes";
            this.eyes.Size = new System.Drawing.Size(48, 31);
            this.eyes.TabIndex = 17;
            this.eyes.UseVisualStyleBackColor = false;
            this.eyes.Visible = false;
            this.eyes.Click += new System.EventHandler(this.eyes_Click);
            // 
            // pictureBox3
            // 
            this.pictureBox3.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.pictureBox3.Image = global::Login.Properties.Resources.Logo_pic;
            this.pictureBox3.Location = new System.Drawing.Point(113, 58);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(165, 149);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox3.TabIndex = 12;
            this.pictureBox3.TabStop = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Login.Properties.Resources.user;
            this.pictureBox1.Location = new System.Drawing.Point(78, 263);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(33, 31);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 11;
            this.pictureBox1.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = global::Login.Properties.Resources.lock_password_fill;
            this.pictureBox2.Location = new System.Drawing.Point(78, 335);
            this.pictureBox2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(33, 31);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox2.TabIndex = 9;
            this.pictureBox2.TabStop = false;
            // 
            // minimize
            // 
            this.minimize.BackColor = System.Drawing.Color.DarkGray;
            this.minimize.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.minimize.ForeColor = System.Drawing.SystemColors.MenuText;
            this.minimize.Location = new System.Drawing.Point(281, 17);
            this.minimize.Name = "minimize";
            this.minimize.Size = new System.Drawing.Size(56, 29);
            this.minimize.TabIndex = 16;
            this.minimize.Text = "_";
            this.minimize.UseVisualStyleBackColor = false;
            this.minimize.Click += new System.EventHandler(this.minimize_Click);
            // 
            // login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(398, 524);
            this.Controls.Add(this.eyes);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.pictureBox3);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.txt_user_pass);
            this.Controls.Add(this.txt_user_email);
            this.Controls.Add(this.panel3);
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login";
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.TextBox txt_user_email;
        private System.Windows.Forms.TextBox txt_user_pass;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox3;
        private System.Windows.Forms.Button close;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button eyes;
        private System.Windows.Forms.PictureBox pictureBox4;
        private System.Windows.Forms.Button minimize;
    }
}

