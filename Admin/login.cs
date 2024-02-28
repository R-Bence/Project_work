using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Drawing;


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
        Point start = new Point(0, 0);
        bool drag = false;
        private void panel_header_MouseDown(object sender, MouseEventArgs e)
        {
            drag = true;
            start = new Point(e.X, e.Y);
        }

        private void panel_header_MouseMove(object sender, MouseEventArgs e)
        {
            if (drag)
            {
                Point p = PointToScreen(e.Location);
                this.Location = new Point(p.X - start.X, p.Y - start.Y);
            }
        }

        private void panel_header_MouseUp(object sender, MouseEventArgs e)
        {
            drag = false;
        }

        private void show_eye(object sender, EventArgs e)
        {
            eyes.Image = Login.Properties.Resources.eye_line;
            eyes.Visible = true;
        }
        bool eyechange = false;
        private void eyes_Click(object sender, EventArgs e)
        {
            if (eyechange == true)
            {
                eyes.Image = Login.Properties.Resources.eye_line;
                eyechange = false;
                txt_user_pass.PasswordChar = '*';
            }
            else if (eyechange == false)
            {
                eyes.Image = Login.Properties.Resources.eye_off_line;
                eyechange = true;
                txt_user_pass.PasswordChar = '\0';
            }
        }


        private void hide_eye(object sender, EventArgs e)
        {
            if(txt_user_pass.Text == "")
            {
                eyes.Image = null;
                eyes.Visible = false;
            }
        }
    }
}
