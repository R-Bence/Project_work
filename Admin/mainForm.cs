using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace Login
{
    public partial class mainForm : Form
    {
        MySqlConnection conn = new MySqlConnection("server=localhost;database=mobil;uid=web_admin;pwd=webadmin123@");

        public mainForm()
        {
            InitializeComponent();
        }

        private void user_fill()
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"Select * from users", conn);
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                dataGridView1.DataSource = dataTable;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Hiba történt: {ex.Message}");
            }
            finally
            {
                conn.Close();
            }
        }

        private void products_fill()
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"Select * from getbrand", conn);
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                dataGridView1.DataSource = dataTable;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Hiba történt: {ex.Message}");
            }
            finally
            {
                conn.Close();
            }
        }

        private void order_fill()
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"SELECT * FROM mobil.rendel;", conn);
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                dataGridView1.DataSource = dataTable;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Hiba történt: {ex.Message}");
            }
            finally
            {
                conn.Close();
            }
        }

        private void tables()
        {
            string query = "SELECT table_name FROM information_schema.tables WHERE table_schema = 'mobil';";
            using (MySqlCommand command = new MySqlCommand(query, conn))
            {
                try
                {
                    conn.Open();
                    MySqlDataReader reader = command.ExecuteReader();

                    // ComboBox feltöltése tábla nevekkel
                    while (reader.Read())
                    {
                        if (reader.GetString("table_name") == "base" || reader.GetString("table_name") == "order" || reader.GetString("table_name") == "users" || reader.GetString("table_name") == "base_conn_order" || reader.GetString("table_name") == "get_max_price" || reader.GetString("table_name") == "get_brand") ;
                        else
                        {
                            comboBox1.Items.Add(reader.GetString("table_name"));
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Hiba történt az adatbázishoz való kapcsolódás közben: " + ex.Message);
                }
                finally
                {
                    conn.Close();
                }
            }

        }


        private void mainForm_Load(object sender, EventArgs e)
        {
            user_fill();
            tables();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            user_fill();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            products_fill();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            order_fill();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string table_name = comboBox1.Text;
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"Select * from {table_name}", conn);
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                dataGridView1.DataSource = dataTable;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Hiba történt: {ex.Message}");
            }
            finally
            {
                conn.Close();
            }
        }

        private void logout_btn_click(object sender, EventArgs e)
        {
            DialogResult logout_pop;
            logout_pop = MessageBox.Show("Biztosan ki akarsz jelentkezni?", "Kijelentkezés", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (logout_pop == DialogResult.Yes)
            {
                login login = new login();
                login.Show();
                this.Hide();
            }
            else
            {
                this.Show();
            }
        }

        private void exit_btn_Click(object sender, EventArgs e)
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


        //Movable Form
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

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
