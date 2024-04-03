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

namespace Login
{
    public partial class addData : Form
    {
        MySqlConnection conn = new MySqlConnection("server=localhost;database=mobil;uid=web_admin;pwd=webadmin123@");
        public string table_name { get; set; }
        List<string> column = new List<string>();
        string values = "";

        public addData()
        {
            InitializeComponent();
        }

        private void addData_Load(object sender, EventArgs e)
        {
            string query = $"SELECT column_name FROM information_schema.columns WHERE table_schema = 'mobil' AND table_name = '{table_name}'";
            using (MySqlCommand command = new MySqlCommand(query, conn))
            {
                try
                {
                    conn.Open();
                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        if (!reader.GetString("column_name").Contains("id"))
                        {
                            column.Add(reader.GetString("column_name"));
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
            create_data();
        }

        private void create_data()
        {
            int labelY = 55;
            int labelX = 10;
            int kezd = 10;
            foreach (string i in column)
            {
                if (!i.Contains("id"))
                {
                    labelX = kezd;
                    if (this.ClientSize.Height - 100 <= labelY)
                    {
                        kezd = 250;
                        labelX = 250;
                        labelY = 55;
                    }
                    Label label = new Label();
                    label.Text = $"{i}: ";
                    label.AutoSize = true;
                    label.Location = new System.Drawing.Point(labelX, labelY);
                    Controls.Add(label);
                    labelX += label.Width + 10;
                    TextBox inputBox = new TextBox();
                    inputBox.Name = $"{i}_inputbox"; // Nevet adunk a könnyebb hivatkozás érdekében
                    inputBox.Location = new System.Drawing.Point(labelX, labelY); // Példa pozíció
                    Controls.Add(inputBox);
                    labelY += label.Height + 15; // Egy kis térköz a label-ek között
                }
            }
            Button button = new Button();
            button.Text = "Hozzáadás";
            button.Location = new System.Drawing.Point(10, labelY + 25);
            button.Click += push;
            Controls.Add(button);
        }

        private void push(object sender, EventArgs e)
        {
            int darab = 0;
            bool all_fill = false;
            foreach (string i in column)
            {
                darab++;
                TextBox textBox = Controls.Find(i + "_inputbox", true).FirstOrDefault() as TextBox;
                if (textBox == null || textBox.Text == "")
                {
                    all_fill = true;
                    break;
                }

                if (darab == column.Count())
                {
                    if (i.Contains("pass"))
                    {
                        values += $"SHA2('{textBox.Text}',256)";
                    }
                    else
                    {
                        values += $"'{textBox.Text}'";
                    }
                }
                else
                {
                    if (i.Contains("pass"))
                    {
                        values += $"SHA2('{textBox.Text}',256),";
                    }
                    else
                    {
                        values += $"'{textBox.Text}',";
                    }
                }
            }
            darab = 0;
            if (all_fill != true)
            {
                try
                {
                    string oszl = "";
                    conn.Open();
                    foreach (string i in column)
                    {
                        darab++;

                        if (darab == column.Count())
                        {
                            oszl += $"{i}";
                        }
                        else
                        {
                            oszl += $"{i},";
                        }
                    }
                    MySqlCommand cmd = new MySqlCommand($"INSERT INTO {table_name} ({oszl}) VALUES ({values})", conn);
                    int affectedRows = cmd.ExecuteNonQuery();
                    if (affectedRows > 0)
                    {
                        MessageBox.Show("Sikeresen hozzáadva az adatok.");
                        this.Close();
                    }
                    else
                    {
                        MessageBox.Show("Hiba történt az adatok hozzáadása során.");
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
            else
            {
                MessageBox.Show("Mindegyik mezőt kötelező kitölteni!");
            }
        }
        private void close_Click(object sender, EventArgs e)
        {
            this.Close();
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

    }
}
