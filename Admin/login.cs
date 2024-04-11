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
        string role = "";
        string id = "";
        public login()
        {
            InitializeComponent();
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
                    login_btn_Click(sender, e);
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

        private void minimize_Click(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Minimized;
        }

        private void login_btn_Click(object sender, EventArgs e)
        {
            string user_email = txt_user_email.Text;
            string user_pass = txt_user_pass.Text;

            try
            {
                conn.Open();

                string login_query = "SELECT user.user_id, user.user_email, user.user_pass, user_type.type_name FROM user INNER JOIN user_type ON user.user_type = user_type.type_id WHERE user.user_email = @user_email AND user.user_pass = SHA2(@user_pass,256) and (user_type.type_name like 'superadmin' or user_type.type_name like 'admin')";

                MySqlCommand cmd = new MySqlCommand(login_query, conn);
                cmd.Parameters.AddWithValue("@user_email", user_email);
                cmd.Parameters.AddWithValue("@user_pass", user_pass);

                MySqlDataAdapter SDA = new MySqlDataAdapter(cmd);

                DataTable dtable = new DataTable();
                SDA.Fill(dtable);
                DataRow row = dtable.Rows[0];
                role = row["type_name"].ToString();
                id = row["user_id"].ToString();

                if (dtable.Rows.Count > 0)
                {
                    mainForm mainForm = new mainForm();
                    mainForm.return_role = role;
                    mainForm.return_id = id;
                    mainForm.Show();
                    this.Hide();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hibás felhasználónév vagy jelszó! " + ex);
            }
            finally
            {
                conn.Close();
            }
        }

        private void delete_btn_Click(object sender, EventArgs e)
        {
            txt_user_email.Text = "";
            txt_user_pass.Text = "";
        }

        private void close_btn_Click(object sender, EventArgs e)
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

        private void close_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
