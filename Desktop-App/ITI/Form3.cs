using Microsoft.Data.SqlClient;
using System;
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
    public partial class Form3 : Form
    {
        int mcq, tf, currentIndex, mcqindex = 0, questionnum = 1, exid, stid;
        List<String> choice;
        List<String> questions;
        List<int> questionsid;
        bool flagmcq = false;
        string connectionString = "Server=DESKTOP-FQ1TMTF\\SQLEXPRESS;Database=ITI_Graduation_Project;Integrated Security=True;Encrypt=false";


        public Form3(int mcq, int tf, List<String> choice, List<String> questions, List<int> questionsid, int exid, int stid)
        {
            InitializeComponent();
            this.mcq = mcq;
            this.tf = tf;
            this.questions = questions;
            this.choice = choice;
            this.exid = exid;
            this.questionsid = questionsid;
            this.stid = stid;
            currentIndex = 0;
            UpdateDisplay();
        }

        private void button1_Click(object sender, EventArgs e)
        {


            // Loop back to the start if at the end of the list

            string answer;
            if (radioButton1.Checked)
            {
                answer = radioButton1.Text;
                add_student_answer(answer);
                if (currentIndex >= questions.Count - 2)
                {
                    examcorrection(exid);
                    MessageBox.Show("Exam Completed");
                    Form1 newForm = new Form1();

                    // Hide the current form
                    this.Hide();

                    // Show the new form
                    newForm.Show(); 
                }
                else
                {

                    if (mcq == 0 && flagmcq == true)
                    {
                        Console.WriteLine("in first if");
                        currentIndex += 3;
                        flagmcq = false;
                    }
                    else if (mcq == 0 && flagmcq == false)
                    {
                        Console.WriteLine("in sec if");
                        currentIndex += 2;
                    }
                    else { Console.WriteLine("in third if"); currentIndex += 3; }
                    UpdateDisplay();

                }
            }
            else if (radioButton2.Checked)
            {
                answer = radioButton2.Text;
                add_student_answer(answer);
                if (currentIndex >= questions.Count - 2)
                {
                    examcorrection(exid);
                    MessageBox.Show("Exam Completed");
                    Form1 newForm = new Form1();

                    // Hide the current form
                    this.Hide();

                    // Show the new form
                    newForm.Show(); 
                }
                else
                {

                    if (mcq == 0 && flagmcq == true)
                    {
                        Console.WriteLine("in first if");
                        currentIndex += 3;
                        flagmcq = false;
                    }
                    else if (mcq == 0 && flagmcq == false)
                    {
                        Console.WriteLine("in sec if");
                        currentIndex += 2;
                    }
                    else { Console.WriteLine("in third if"); currentIndex += 3; }
                    UpdateDisplay();

                }
            }
            else if (radioButton3.Checked)
            {
                answer = radioButton3.Text;
                add_student_answer(answer);
                if (currentIndex >= questions.Count - 2)
                {
                    examcorrection(exid);
                    MessageBox.Show("Exam Completed");
                    Form1 newForm = new Form1();

                    // Hide the current form
                    this.Hide();

                    // Show the new form
                    newForm.Show(); 
                }
                else
                {

                    if (mcq == 0 && flagmcq == true)
                    {
                        Console.WriteLine("in first if");
                        currentIndex += 3;
                        flagmcq = false;
                    }
                    else if (mcq == 0 && flagmcq == false)
                    {
                        Console.WriteLine("in sec if");
                        currentIndex += 2;
                    }
                    else { Console.WriteLine("in third if"); currentIndex += 3; }
                    UpdateDisplay();

                }
            }
            else
            {
                MessageBox.Show("Please Choose answer");
            }

            // Update the display

        }
        private void UpdateDisplay()
        {
            // Display the current item in the label        
            textBox1.Text = questions[currentIndex];       
            if (mcq != 0)
            {
                radioButton1.Text = choice[mcqindex];
                radioButton2.Text = choice[mcqindex + 1];
                radioButton3.Text = choice[mcqindex + 2];
                mcqindex += 3;
                mcq -= 1;
                if (mcq == 0)
                { flagmcq = true; }

            }
            else
            {

                radioButton3.Visible = false;
                radioButton1.Text = "True";
                radioButton2.Text = "False";

            }
            label2.Text = questionnum.ToString();
            questionnum++;
        }

        private void add_student_answer(string answer)
        {
            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "Insert_Student_Solution";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@exam_id", exid);
                    command.Parameters.AddWithValue("@stud_id", stid);
                    command.Parameters.AddWithValue("@quest_id", questionsid[currentIndex]);
                    command.Parameters.AddWithValue("@st_answer", answer);
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
        }

        public void examcorrection(int ex_id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "EXAM_CORRECTION";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@EXAM_ID", ex_id);
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
        }

    }
}
