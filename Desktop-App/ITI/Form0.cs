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
    public partial class Form0 : Form
    {
        public Form0()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            Form1 newForm = new Form1();

            // Hide the current form
            this.Hide();

            // Show the new form
            newForm.Show();
        }
        private void button2_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form4 newForm = new Form4();

            // Hide the current form
            this.Hide();

            // Show the new form
            newForm.Show();
        }
    }
}