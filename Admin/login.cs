using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Login
{
    public partial class login : Form
    {
        MySqlConnection conn = new MySqlConnection("server=localhost;database=mobil;uid=guest;pwd=guest123@");

        public login()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string user_name = txt_user_name.Text;
            string user_pass = txt_user_pass.Text;

            try
            {
                conn.Open();

                string login_query = "SELECT users.user_name, users.user_pass, user_type.type_name FROM users INNER JOIN user_type ON users.user_type = user_type.type_id WHERE users.user_name = @UserName AND users.user_pass = SHA2(@UserPass,256)";

                MySqlCommand cmd = new MySqlCommand(login_query, conn);
                cmd.Parameters.AddWithValue("@UserName", user_name);
                cmd.Parameters.AddWithValue("@UserPass", user_pass);

                MySqlDataAdapter SDA = new MySqlDataAdapter(cmd);

                DataTable dtable = new DataTable();
                SDA.Fill(dtable);

                if (dtable.Rows.Count > 0)
                {
                    mainForm mainForm = new mainForm();
                    mainForm.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Hibás felhasználónév vagy jelszó!");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba történt: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            txt_user_name.Text = "";
            txt_user_pass.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult exit_pop;
            exit_pop = MessageBox.Show("Biztosan ki akarsz lépni?", "Kilépés", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (exit_pop == DialogResult.Yes)
            {
                Application.Exit();
            }
            else
            {
                this.Show();
            }
        }

        private void text_Onpress(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                if (txt_user_pass.Text.Length == 0)
                {
                    txt_user_pass.Focus();
                }
                else
                {
                    button1_Click(sender, e);
                }
            }

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
