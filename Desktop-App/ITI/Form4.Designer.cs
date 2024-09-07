namespace ITI
{
    partial class Form4
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            textBox1 = new TextBox();
            textBox2 = new TextBox();
            label4 = new Label();
            textBox3 = new TextBox();
            label5 = new Label();
            textBox4 = new TextBox();
            label7 = new Label();
            comboBox1 = new ComboBox();
            dateTimePicker1 = new DateTimePicker();
            label8 = new Label();
            comboBox2 = new ComboBox();
            label9 = new Label();
            comboBox3 = new ComboBox();
            label10 = new Label();
            comboBox4 = new ComboBox();
            label11 = new Label();
            button1 = new Button();
            button2 = new Button();
            textBox6 = new TextBox();
            label12 = new Label();
            textBox5 = new TextBox();
            label6 = new Label();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI Semibold", 19.8000011F, FontStyle.Bold, GraphicsUnit.Point, 0);
            label1.Location = new Point(316, 27);
            label1.Name = "label1";
            label1.Size = new Size(353, 46);
            label1.TabIndex = 0;
            label1.Text = "Register New Student";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label2.Location = new Point(44, 124);
            label2.Name = "label2";
            label2.Size = new Size(106, 28);
            label2.TabIndex = 1;
            label2.Text = "First Name";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label3.Location = new Point(612, 127);
            label3.Name = "label3";
            label3.Size = new Size(103, 28);
            label3.TabIndex = 2;
            label3.Text = "Last Name";
            // 
            // textBox1
            // 
            textBox1.Location = new Point(170, 128);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(228, 27);
            textBox1.TabIndex = 3;
            // 
            // textBox2
            // 
            textBox2.Location = new Point(732, 128);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(228, 27);
            textBox2.TabIndex = 4;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label4.Location = new Point(44, 196);
            label4.Name = "label4";
            label4.Size = new Size(82, 28);
            label4.TabIndex = 5;
            label4.Text = "Address";
            // 
            // textBox3
            // 
            textBox3.Location = new Point(170, 197);
            textBox3.Name = "textBox3";
            textBox3.Size = new Size(228, 27);
            textBox3.TabIndex = 6;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label5.Location = new Point(620, 196);
            label5.Name = "label5";
            label5.Size = new Size(59, 28);
            label5.TabIndex = 7;
            label5.Text = "Email";
            // 
            // textBox4
            // 
            textBox4.Location = new Point(732, 196);
            textBox4.Name = "textBox4";
            textBox4.Size = new Size(228, 27);
            textBox4.TabIndex = 8;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label7.Location = new Point(38, 462);
            label7.Name = "label7";
            label7.Size = new Size(76, 28);
            label7.TabIndex = 11;
            label7.Text = "Gender";
            label7.Click += label7_Click;
            // 
            // comboBox1
            // 
            comboBox1.DropDownStyle = ComboBoxStyle.DropDownList;
            comboBox1.FormattingEnabled = true;
            comboBox1.Items.AddRange(new object[] { "Female", "Male" });
            comboBox1.Location = new Point(170, 462);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(151, 28);
            comboBox1.Sorted = true;
            comboBox1.TabIndex = 12;
            // 
            // dateTimePicker1
            // 
            dateTimePicker1.Location = new Point(732, 460);
            dateTimePicker1.Name = "dateTimePicker1";
            dateTimePicker1.Size = new Size(228, 27);
            dateTimePicker1.TabIndex = 13;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label8.Location = new Point(590, 460);
            label8.Name = "label8";
            label8.Size = new Size(122, 28);
            label8.TabIndex = 14;
            label8.Text = "Date of Birth";
            // 
            // comboBox2
            // 
            comboBox2.DropDownStyle = ComboBoxStyle.DropDownList;
            comboBox2.FormattingEnabled = true;
            comboBox2.Items.AddRange(new object[] { "Alexandria", "Assiut", "Aswan", "Beni Suef", "Cairo University", "Fayoum", "Ismailia", "Mansoura", "Menofia", "Minya", "New Capital", "Qena", "Smart Village", "Sohag" });
            comboBox2.Location = new Point(170, 509);
            comboBox2.Name = "comboBox2";
            comboBox2.Size = new Size(242, 28);
            comboBox2.TabIndex = 16;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label9.Location = new Point(33, 509);
            label9.Name = "label9";
            label9.Size = new Size(71, 28);
            label9.TabIndex = 15;
            label9.Text = "Branch";
            // 
            // comboBox3
            // 
            comboBox3.DropDownStyle = ComboBoxStyle.DropDownList;
            comboBox3.FormattingEnabled = true;
            comboBox3.Items.AddRange(new object[] { "AI", "CS", "DS", "IS", "IT" });
            comboBox3.Location = new Point(170, 570);
            comboBox3.Name = "comboBox3";
            comboBox3.Size = new Size(242, 28);
            comboBox3.TabIndex = 18;
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label10.Location = new Point(33, 570);
            label10.Name = "label10";
            label10.Size = new Size(117, 28);
            label10.TabIndex = 17;
            label10.Text = "Department";
            // 
            // comboBox4
            // 
            comboBox4.DropDownStyle = ComboBoxStyle.DropDownList;
            comboBox4.FormattingEnabled = true;
            comboBox4.Items.AddRange(new object[] { "2D Graphics Design", "Blockchain Development", "Business Analysis", "Data Engineering", "Data Managment", "Database Administrator", "Full Stack Web Development Using .Net", "Full Stack Web Development Using MERN", "Full Stack Web Development using PHP", "Full Stack Web Development using Python", "Furniture Design and Visualization", "iOS Mobile Application Developmen", "Microsoft Azure Administration", "Mobile Applications Development For Android", "Power BI Developer", "Software Development Fundamentals", "Software Testing", "System Administrator", "UI/UX Design", "Web Development Using CMS" });
            comboBox4.Location = new Point(667, 520);
            comboBox4.Name = "comboBox4";
            comboBox4.Size = new Size(293, 28);
            comboBox4.Sorted = true;
            comboBox4.TabIndex = 20;
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label11.Location = new Point(604, 520);
            label11.Name = "label11";
            label11.Size = new Size(56, 28);
            label11.TabIndex = 19;
            label11.Text = "Track";
            // 
            // button1
            // 
            button1.Location = new Point(835, 608);
            button1.Name = "button1";
            button1.Size = new Size(122, 60);
            button1.TabIndex = 21;
            button1.Text = "Done";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // button2
            // 
            button2.Location = new Point(667, 608);
            button2.Name = "button2";
            button2.Size = new Size(122, 60);
            button2.TabIndex = 22;
            button2.Text = "Cancel";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // textBox6
            // 
            textBox6.Location = new Point(170, 270);
            textBox6.Name = "textBox6";
            textBox6.Size = new Size(228, 27);
            textBox6.TabIndex = 24;
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label12.Location = new Point(47, 266);
            label12.Name = "label12";
            label12.Size = new Size(67, 28);
            label12.TabIndex = 23;
            label12.Text = "Phone";
            // 
            // textBox5
            // 
            textBox5.Location = new Point(170, 383);
            textBox5.Name = "textBox5";
            textBox5.Size = new Size(596, 27);
            textBox5.TabIndex = 26;
            textBox5.TextChanged += textBox5_TextChanged;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Segoe UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label6.Location = new Point(170, 332);
            label6.Name = "label6";
            label6.Size = new Size(421, 28);
            label6.TabIndex = 25;
            label6.Text = "Add any Social Media link ex (facebook,twitter)";
            // 
            // Form4
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1009, 664);
            Controls.Add(textBox5);
            Controls.Add(label6);
            Controls.Add(textBox6);
            Controls.Add(label12);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(comboBox4);
            Controls.Add(label11);
            Controls.Add(comboBox3);
            Controls.Add(label10);
            Controls.Add(comboBox2);
            Controls.Add(label9);
            Controls.Add(label8);
            Controls.Add(dateTimePicker1);
            Controls.Add(comboBox1);
            Controls.Add(label7);
            Controls.Add(textBox4);
            Controls.Add(label5);
            Controls.Add(textBox3);
            Controls.Add(label4);
            Controls.Add(textBox2);
            Controls.Add(textBox1);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "Form4";
            Text = "Register New Student";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private Label label3;
        private TextBox textBox1;
        private TextBox textBox2;
        private Label label4;
        private TextBox textBox3;
        private Label label5;
        private TextBox textBox4;
        private Label label7;
        private ComboBox comboBox1;
        private DateTimePicker dateTimePicker1;
        private Label label8;
        private ComboBox comboBox2;
        private Label label9;
        private ComboBox comboBox3;
        private Label label10;
        private ComboBox comboBox4;
        private Label label11;
        private Button button1;
        private Button button2;
        private TextBox textBox6;
        private Label label12;
        private TextBox textBox5;
        private Label label6;
    }
}