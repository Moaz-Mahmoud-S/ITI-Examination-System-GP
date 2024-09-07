using Microsoft.Data.SqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ITI
{
    public partial class Form2 : Form
    {
        private Dictionary<string, int> courses = new Dictionary<string, int>();


        List<string> questionslist = new List<string>();
        List<int> questionsIDlist = new List<int>();
        List<string> choiceslist = new List<string>();
        int totalquestion, exam_id, stid;
        string connectionString = "Server=DESKTOP-FQ1TMTF\\SQLEXPRESS;Database=ITI_Graduation_Project;Integrated Security=True;Encrypt=false";


        // Add 20 courses to the dictionary

        public Form2(int stid)
        {
            InitializeComponent();
            courses.Add("Programming in C#", 1);
            courses.Add("Programming in C++", 2);
            courses.Add("Programming in JAVA", 3);
            courses.Add("Programming in PYTHON", 4);
            courses.Add("Programming in C", 5);
            courses.Add("DB Development in SQL", 6);
            courses.Add("Advanced SQL", 7);
            courses.Add("DB Design", 8);
            courses.Add("XML & SQL", 9);
            courses.Add("DataWarehouse", 10);
            courses.Add("System arch design", 11);
            courses.Add("Software Testing", 12);
            courses.Add("OOP", 13);
            courses.Add("Agile", 14);
            courses.Add("DEVOPS", 15);
            courses.Add("Cloud Computing", 16);
            courses.Add("Azure", 17);
            courses.Add("Linux", 18);
            courses.Add("Networking & Security", 19);
            courses.Add("DEVOPS and Cloud", 20);
            courses.Add("Graphic Design", 21);
            courses.Add("UI/UX Design", 22);
            courses.Add("2D and 3D Design", 23);
            courses.Add("Design Tools and Software", 24);
            courses.Add("Design Thinking", 25);
            this.stid = stid;
            LoadComboBoxData();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
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

        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string textboxValue = textBox1.Text;
            int mcq = Int32.Parse(textboxValue);

            string textboxValue1 = textBox2.Text;
            int tf = Int32.Parse(textboxValue1);

            string selectedItem = comboBox1.SelectedItem as string;

            int crsid = courses[selectedItem];

            totalquestion = mcq + tf;

            if (totalquestion > 10 || totalquestion < 10)

            {
                MessageBox.Show("Total Question Muat be 10");

            }
            else
            {

                try
                {

                    // Define the connection string

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        try
                        {

                            connection.Open();
                            string query = "EXAM_GENERATION_TWO";
                            SqlCommand command = new SqlCommand(query, connection);
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@MCQ_NUM", mcq);
                            command.Parameters.AddWithValue("@TF_NUM", tf);
                            command.Parameters.AddWithValue("@Course_ID", crsid);

                            string query1 = "GET_LAST_EXAM_ID";
                            SqlCommand command1 = new SqlCommand(query1, connection);
                            command1.CommandType = CommandType.StoredProcedure;
                            object result = command1.ExecuteScalar();

                            if (result != null)
                            {
                                exam_id = Convert.ToInt32(result);

                            }


                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                // Check if the reader has rows
                                if (reader.HasRows)
                                {

                                    // Read each row
                                    while (reader.Read())
                                    {
                                        // Read columns by index or name
                                        int questionid = reader.GetInt32(reader.GetOrdinal("question_id"));
                                        string question = reader.GetString(reader.GetOrdinal("Question"));
                                        string choice = reader.GetString(reader.GetOrdinal("Choice"));
                                        questionslist.Add(question);
                                        questionsIDlist.Add(questionid);
                                        choiceslist.Add(choice);

                                    }
                                    Form3 newForm = new Form3(mcq, tf, choiceslist, questionslist, questionsIDlist, exam_id, stid);

                                    // Hide the current form
                                    this.Hide();

                                    // Show the new form
                                    newForm.Show();

                                }
                                else
                                {
                                    Console.WriteLine("No rows found.");
                                }
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

        private void LoadComboBoxData()
        {

            // Define your SQL query


            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    // Open the connection
                    conn.Open();
                    string query = "GET_STUDENT_COURSE";
                    SqlCommand command = new SqlCommand(query, conn);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@ST_ID", stid);

                    // Create a SqlCommand to execute the query

                    // Execute the command and obtain a SqlDataReader
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Clear existing items in the ComboBox
                        comboBox1.Items.Clear();

                        // Loop through the results and add them to the ComboBox
                        while (reader.Read())
                        {
                            comboBox1.Items.Add(reader["Course_Name"].ToString());
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("An error occurred: " + ex.Message);
                }
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
