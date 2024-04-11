using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net.Mail;
using System.Net;

namespace Login
{
    public partial class helpForm : Form
    {
        public helpForm()
        {
            InitializeComponent();
        }

        private void close_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void send_Click(object sender, EventArgs e)
        {
            string mail = "mobilteszt@outlook.hu";
            string password = "ASDfgh123";
            string subject = subject_txtbox.Text;
            string body = body_txtbox.Text;

            try
            {       
                MailMessage mm = new MailMessage();
                SmtpClient sc = new SmtpClient("smtp.outlook.com");
                mm.From = new MailAddress(mail);
                mm.To.Add("bontovics.oktatas@outlook.com");
                mm.Subject = subject;
                mm.Body = body;
                sc.Port = 587;
                sc.Credentials = new System.Net.NetworkCredential(mail, password);
                sc.EnableSsl = true;
                sc.Send(mm);
                MessageBox.Show("Az email sikeresen elküldve");
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
