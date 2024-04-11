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
            string subject = "Fontos információk a projekt részleteiről";
            string body = "Kedves Kollégák,\n\nSzeretném megosztani veletek a legfrissebb fejleményeket a projektünkkel kapcsolatban. Kérlek, olvassátok el az alábbi részleteket, és jelezzétek vissza, ha van bármi kérdésetek vagy észrevételetek.\n\nKöszönöm a figyelmet és az együttműködést!\n\nÜdvözlettel,\n[megadható a neved vagy a feladó neve]";
            string password = "ASDfgh123";

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
                MessageBox.Show("Az email elküldve");
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
