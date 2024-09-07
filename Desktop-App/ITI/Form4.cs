using Microsoft.Data.SqlClient;
using Microsoft.IdentityModel.Tokens;
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
    public partial class Form4 : Form
    {
        private Dictionary<string, int> Track = new Dictionary<string, int>();
        private Dictionary<string, int> Branch = new Dictionary<string, int>();
        private Dictionary<string, int> Department = new Dictionary<string, int>();
        string connectionString = "Server=DESKTOP-FQ1TMTF\\SQLEXPRESS;Database=ITI_Graduation_Project;Integrated Security=True;Encrypt=false";

        public Form4()
        {
            InitializeComponent();
            Department.Add("IS", 10);
            Department.Add("CS", 20);
            Department.Add("AI", 30);
            Department.Add("DS", 40);
            Department.Add("IT", 50);

            Track.Add("Power BI Developer", 1);
            Track.Add("Full Stack Web Development Using .Net", 2);
            Track.Add("Full Stack Web Development using PHP", 3);
            Track.Add("Full Stack Web Development using Python", 4);
            Track.Add("Full Stack Web Development Using MERN", 5);
            Track.Add("Data Engineering", 6);
            Track.Add("Data Managment", 7);
            Track.Add("UI/UX Design", 8);
            Track.Add("2D Graphics Design", 9);
            Track.Add("Furniture Design and Visualization", 10);
            Track.Add("Software Testing", 11);
            Track.Add("Database Administrator", 12);
            Track.Add("Microsoft Azure Administration", 13);
            Track.Add("Business Analysis", 14);
            Track.Add("Software Development Fundamentals", 15);
            Track.Add("iOS Mobile Application Developmen", 16);
            Track.Add("Mobile Applications Development For Android", 17);
            Track.Add("Blockchain Development", 18);
            Track.Add("Web Development Using CMS", 19);
            Track.Add("System Administrator", 20);


            Branch.Add("Smart Village", 1);
            Branch.Add("New Capital", 2);
            Branch.Add("Cairo University", 3);
            Branch.Add("Alexandria", 4);
            Branch.Add("Assiut", 5);
            Branch.Add("Aswan", 6);
            Branch.Add("Beni Suef", 7);
            Branch.Add("Fayoum", 8);
            Branch.Add("Mansoura", 9);
            Branch.Add("Menofia", 10);
            Branch.Add("Minya", 11);
            Branch.Add("Qena", 12);
            Branch.Add("Sohag", 13);
            Branch.Add("Ismailia", 14);
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form0 newForm = new Form0();

            // Hide the current form
            this.Hide();

            // Show the new form
            newForm.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String Fname, Lname, Address, Phone, Email, socailmedia;
            String Gender, Track_tx, Branch_tx, Department_tx;
            DateTime Dateofbirth;

            int branchid, trackid, depid;

            try
            {
                Fname = textBox1.Text;
                Lname = textBox2.Text;
                Address = textBox3.Text;
                Email = textBox4.Text;
                socailmedia = textBox5.Text;
                Phone = textBox6.Text;
                Gender = comboBox1.Text;
                Branch_tx = comboBox2.Text;
                Department_tx = comboBox3.Text;
                Track_tx = comboBox4.Text;
                Dateofbirth = dateTimePicker1.Value.Date;
                Console.WriteLine(Dateofbirth.ToString());
                if (string.IsNullOrEmpty(Fname)
                    || string.IsNullOrEmpty(Lname)
                    || string.IsNullOrEmpty(Address)
                    || string.IsNullOrEmpty(Email)
                    || string.IsNullOrEmpty(Phone)
                    || string.IsNullOrEmpty(Gender)
                    || string.IsNullOrEmpty(Branch_tx)
                    || string.IsNullOrEmpty(Department_tx)
                    || string.IsNullOrEmpty(Track_tx))

                {
                    MessageBox.Show("You Must Enter All Fields");

                }
                else
                {
                    if (Gender == "Female")
                    { Gender = "F"; }
                    else
                        Gender = "M";


                    depid = Department[Department_tx];
                    trackid = Track[Track_tx];
                    branchid = Branch[Branch_tx];

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        try
                        {

                            connection.Open();
                            string query = "Insert_Student";
                            SqlCommand command = new SqlCommand(query, connection);
                            command.CommandType = CommandType.StoredProcedure;
                            command.Parameters.AddWithValue("@Student_Fname", Fname);
                            command.Parameters.AddWithValue("@Student_Lname", Lname);
                            command.Parameters.AddWithValue("@ST_Address", Address);
                            command.Parameters.AddWithValue("@ST_Email", Email);
                            command.Parameters.AddWithValue("@ST_Phone", Phone);
                            command.Parameters.AddWithValue("@ST_Gender", Gender);
                            command.Parameters.AddWithValue("@ST_DOB", Dateofbirth);
                            command.Parameters.AddWithValue("@Branch_ID", branchid);
                            command.Parameters.AddWithValue("@Dep_ID", depid);
                            command.Parameters.AddWithValue("@Track_ID", trackid);
                            command.Parameters.AddWithValue("@social_media", socailmedia);
                            command.ExecuteScalar();
                            connection.Close();

                            MessageBox.Show("New Student Added Succefully");
                            Form0 newForm = new Form0();

                            // Hide the current form
                            this.Hide();

                            // Show the new form
                            newForm.Show();

                        }
                        catch { MessageBox.Show("an error occured"); }
                    }
                }

            }
            catch { }


        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
