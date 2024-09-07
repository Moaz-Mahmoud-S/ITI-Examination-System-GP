
using System;
using System.Data;
using Microsoft.Data.SqlClient;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace ITI
{

    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void ConnectToDatabase()
        {
            // Define the connection string
            string connectionString = "Server=DESKTOP-FQ1TMTF\\SQLEXPRESS;Database=ITI_Graduation_Project;Integrated Security=True;Encrypt=false";

            // Create a SqlConnection object

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    // Open the connection
                    connection.Open();
                    MessageBox.Show("Connection successful!");

                    // You can execute commands here
                    // Example: SqlCommand command = new SqlCommand("your SQL query", connection);

                }
                catch (Exception ex)
                {
                    MessageBox.Show("Connection failed: " + ex.Message);
                }
            }
        }


        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!char.IsControl(e.KeyChar) && !char.IsDigit(e.KeyChar) && (e.KeyChar != '.'))
            {
                e.Handled = true;
            }

            // If you want, you can allow decimal (float) numbers
            if ((e.KeyChar == '.') && ((sender as TextBox).Text.IndexOf('.') > -1))
            {
                e.Handled = true;
            }


        }

        private void textBox1_Enter(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

            string textboxValue = textBox1.Text;
            
            if (string.IsNullOrWhiteSpace(textBox1.Text))
            {
                // The TextBox is empty or contains only whitespace
                MessageBox.Show("The text box is empty. Please enter a value.", "Input Required", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                try
                {
                    int valueInt = Int32.Parse(textboxValue);

                    // Define the connection string
                    string connectionString = "Server=DESKTOP-FQ1TMTF\\SQLEXPRESS;Database=ITI_Graduation_Project;Integrated Security=True;Encrypt=false";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        try
                        {
                            connection.Open();

                            string query = "SELECT * FROM [dbo].[Student] WHERE [ST_ID] = @param1";
                            SqlCommand command = new SqlCommand(query, connection);
                            command.Parameters.AddWithValue("@param1", valueInt);

                            object result = command.ExecuteScalar();


                            if (result != null)
                            {
                                int st_id = Convert.ToInt32(result);
                                // Display the result or use it as needed
                                Form2 newForm = new Form2(st_id);

                                // Hide the current form
                                this.Hide();

                                // Show the new form
                                newForm.Show();
                            }
                            else
                            {
                                MessageBox.Show("No Student With this ID");
                            }
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show("Error: " + ex.Message);
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
        }
        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
