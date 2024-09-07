CREATE DATABASE ITI_Graduation_Project

GO

USE ITI_Graduation_Project


-- *CREATE TABLES*


-- Topic Table
CREATE TABLE Topic (
	Topic_ID INT PRIMARY KEY,
	Topic_Name VARCHAR(50) NOT NULL
);

-- Course Table
CREATE TABLE Course (
	Course_ID INT PRIMARY KEY,
	Course_Name VARCHAR(50) NOT NULL,
	Course_Description VARCHAR(100),
);

-- Question Table
CREATE TABLE Question (
	Question_ID INT PRIMARY KEY,
	Question VARCHAR(100) NOT NULL,
	Type BIT NOT NULL,
);

-- Choices Table
CREATE TABLE Choices (
	Choise_ID INT PRIMARY KEY IDENTITY(1,1),
	Choise VARCHAR(100) NOT NULL,
	Right_Choise BIT NOT NULL,
);

-- Branch Table
CREATE TABLE Branch (
	Branch_ID INT PRIMARY KEY,
	Branch_Name VARCHAR(20) NOT NULL,
	Branch_Gov VARCHAR(20)
);
-- Student Table
CREATE TABLE Student (
	ST_ID INT primary key,
	Student_Fname VARCHAR(20) NOT NULL,
	Student_Lname VARCHAR(20) NOT NULL,
	ST_Address VARCHAR(50) NOT NULL,
	ST_Email VARCHAR(25) ,
	ST_Phone VARCHAR(11) NOT NULL CHECK (LEN(ST_Phone) = 11),
	ST_Gender CHAR(1) NOT NULL,
	CHECK (ST_Gender in ('F','M')),
	ST_DOB DATE,
	Track_ID INT,
	Branch_ID INT ,
	Dep_ID INT ,
	ST_SocialMedia VARCHAR(200)
);

-- Enrollment Table
CREATE TABLE Enrollment (
	Grade FLOAT,
	ST_ID INT ,
	Course_ID INT
);

-- Exam Table
CREATE TABLE Exam (
	Exam_ID INT primary key identity,
	End_Date DATETIME,
	Exam_Grade INT check (Exam_Grade >0 and Exam_Grade <11),
	Course_ID INT 
);
ALTER TABLE Exam
ADD CONSTRAINT CHK_Exam_Grade_Range CHECK (Exam_Grade BETWEEN 0 AND 10)

-- Department Table
CREATE TABLE Department (
	Dep_ID INT PRIMARY KEY,
	Dep_Name VARCHAR(20) NOT NULL,
	Dep_mang_hiredate DATE,

	Dep_manger INT 
);

-- Instructor Table
CREATE TABLE Instructor (
	Instructor_ID INT PRIMARY KEY,
	Instructor_Name VARCHAR(20) NOT NULL,
	Ins_Degree VARCHAR(20),
	Salary INT NOT NULL,

	Department_ID INT
);

-- Job Table
CREATE TABLE Job (
	Company_ID INT PRIMARY KEY,
	Company_Name VARCHAR(20) NOT NULL,
	Job_Role VARCHAR(20) NOT NULL,
	Salary INT NOT NULL,
	Multinational BIT,
	Hire_Date Date,
	Student_ID INT
);

-- Freelancing Table 
CREATE TABLE Freelancing (
	Freelancing_ID INT PRIMARY KEY,
	Website_Name VARCHAR(20) NOT NULL,
	Client_Name VARCHAR(20) NOT NULL,
	Client_Country VARCHAR(20),
	Budget INT NOT NULL,
	Status VARCHAR(20) NOT NULL,
	Task_Date Date,
	Student_ID INT
);

-- Student_Solution Table
CREATE TABLE Student_Solution (
	Student_ID INT, 
	Exam_ID INT,
	Question_ID INT ,
	Student_Answer INT NOT NULL,

	CONSTRAINT Student_Solution_PK PRIMARY KEY(Student_ID,Exam_ID,Question_ID)
);

-- Track Table
CREATE TABLE Track (
	Track_ID INT PRIMARY KEY,
	Track_Name VARCHAR(20),
);

-- Track_Branch Table
CREATE TABLE Track_Branch (
	Track_ID INT, 
	Branch_ID INT,
);

-- Evaluation Table
CREATE TABLE Evaluation (
	Instructor_ID INT,
	Student_ID INT,
	Explanation INT,
	Labs INT,

	CONSTRAINT Evaluation_PK PRIMARY KEY(Instructor_ID,Student_ID)
);

CREATE TABLE Instructor_Course 
(
Course_ID INT FOREIGN KEY REFERENCES Course (Course_ID) ,
Instructor_ID INT FOREIGN KEY REFERENCES Instructor (Instructor_ID),

)










