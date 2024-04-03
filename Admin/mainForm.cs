using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using Microsoft.VisualBasic;

namespace Login
{
    public partial class mainForm : Form
    {
        MySqlConnection conn = new MySqlConnection("server=localhost;database=mobil;uid=web_admin;pwd=webadmin123@");
        public string return_role { get; set; }
        public string return_name { get; set; }
        public string return_id { get; set; }
        string table_name = "";
        string fil = "";
        public mainForm()
        {
            InitializeComponent();
        }

        private void ReloadDataGridView()
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"SELECT * FROM {table_name}", conn);
                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                dataGridView1.DataSource = dataTable;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Hiba történt az adatok újratöltése közben: {ex.Message}");
            }
            finally
            {
                conn.Close();
            }
        }

        private void user_fill()
        {
            try
            {
                conn.Open();
                table_name = "user";
                MySqlCommand cmd = new MySqlCommand($"Select * from user", conn);
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
                table_name = "base";
                MySqlCommand cmd = new MySqlCommand($"Select * from mobil.base", conn);
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
                {
                    conn.Open();
                    table_name = "rendel";
                    MySqlCommand cmd = new MySqlCommand($"SELECT * FROM mobil.rendel", conn);
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);
                    dataGridView1.DataSource = dataTable;
                }
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
                        if (reader.GetString("table_name") == "base" || reader.GetString("table_name") == "order" || reader.GetString("table_name") == "user" || reader.GetString("table_name") == "base_conn_order" || reader.GetString("table_name") == "get_max_price" || reader.GetString("table_name") == "get_brand" || reader.GetString("table_name") == "product_all_details" || reader.GetString("table_name") == "get_products" || reader.GetString("table_name") == "ram_fill" || reader.GetString("table_name") =="rendel") ;
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

        private void filters()
        {
            fils_combo_box.Text = "";
            fils_combo_box.Items.Clear();
            string query = $"SELECT column_name FROM information_schema.columns WHERE table_schema = 'mobil' AND table_name = '{table_name}'";
            using (MySqlCommand command = new MySqlCommand(query, conn))
            {
                try
                {
                    conn.Open();
                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        fils_combo_box.Items.Add(reader.GetString("column_name"));
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
            filters();
            name_txt_label.Text = "Üdvözlöm: " + return_name;
            comboBox1.DropDownStyle = ComboBoxStyle.DropDownList;
            fils_combo_box.DropDownStyle = ComboBoxStyle.DropDownList;
            if (return_role != "superadmin")
            {
                button4.Enabled = false;
                add_product.Enabled = false;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            user_fill();
            filters();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            products_fill();
            filters();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            order_fill();
            filters();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string table_name = comboBox1.Text;
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"Select * from {table_name}", conn);
                this.table_name =  table_name;
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
                filters();
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

        //AI
        private void CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            if(return_role == "superadmin")
            {
                DialogResult logout_pop;
                logout_pop = MessageBox.Show("Biztosan modosítani akarja a mező értékét?", "Modosítás", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (logout_pop == DialogResult.Yes)
                {
                    int rowIndex = e.RowIndex;

                    object newValue = dataGridView1.Rows[rowIndex].Cells[e.ColumnIndex].Value;

                    var dataSource = dataGridView1.DataSource;

                    // Ellenőrzés az "id" szóra
                    if (!dataGridView1.Columns[e.ColumnIndex].Name.ToLower().Contains("id"))
                    {

                        string updateQuery = $"UPDATE {table_name} SET {dataGridView1.Columns[e.ColumnIndex].Name} = @NewValue WHERE {table_name}_id = @RowID";

                        using (MySqlCommand updateCommand = new MySqlCommand(updateQuery, conn))
                        {
                            updateCommand.Parameters.AddWithValue("@NewValue", newValue);
                            updateCommand.Parameters.AddWithValue("@RowID", dataGridView1.Rows[rowIndex].Cells[$"{table_name}_id"].Value);
                            try
                            {
                                conn.Open();
                                updateCommand.ExecuteNonQuery();
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show($"Hiba történt az adatbázis frissítése közben: {ex.Message}");
                            }
                            finally
                            {
                                conn.Close();
                                ReloadDataGridView();
                            }
                        }
                    }
                    else
                    {
                        MessageBox.Show("Nem lehet módosítani az 'id' oszlopot.");
                        ReloadDataGridView();
                    }
                }
                else
                {
                    ReloadDataGridView();
                }
            }
            else
            {
                MessageBox.Show("Nincs joga hozzá hogy módosítson!");
                ReloadDataGridView();
            }
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if(textBox1.Text != "")
            {
                string Search_params = textBox1.Text;
                try
                {
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand($"Select * from {table_name} where {fil} like '%{Search_params}%'", conn);
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
            else
            {
                ReloadDataGridView();
            }

        }

        private void fils_combo_box_SelectedIndexChanged(object sender, EventArgs e)
        {
            fil = fils_combo_box.Text;
        }

        private void minimize_Click(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Minimized;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string delIdInput = Microsoft.VisualBasic.Interaction.InputBox("Kérlek, adja meg a törölni kivánt ID-t:", "Törlés", "");
            if (!string.IsNullOrEmpty(delIdInput))
            {
                if (delIdInput == $"{return_id}" && table_name == "user")
                {
                    MessageBox.Show("A felhasználó magát nem tudja kitörölni!");
                }
                else
                {
                    DialogResult logout_pop;
                    logout_pop = MessageBox.Show($"Biztosan törölni akarja a {delIdInput} ID-val rendelkező adatot?", "Törlés", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (logout_pop == DialogResult.Yes)
                    {
                        try
                        {
                            conn.Open();
                            MySqlCommand cmd = new MySqlCommand($"DELETE FROM `mobil`.`{table_name}` WHERE (`{table_name}_id` = '{delIdInput}')", conn);
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
                            ReloadDataGridView();
                        }
                    }
                }

            }
        }
            
        private void add_product_Click(object sender, EventArgs e)
        {
            addData add = new addData();
            add.table_name = table_name;
            add.ShowDialog();
            ReloadDataGridView();
        }

        private void help_btn_Click(object sender, EventArgs e)
        {
            helpForm help = new helpForm();
            help.ShowDialog();
        }
    }
}
