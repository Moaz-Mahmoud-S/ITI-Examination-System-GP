

---------------------------------------------------------- Rules ----------------------------------------------------------


-- Rule --> The Student Phone Must Start with 010 / 011 / 012 / 015
CREATE RULE Student_Phone AS @value LIKE '01[0125]%'
SP_BINDRULE Student_Phone , 'Student.ST_Phone'


-- Rule --> Check The Student Email in The Right Form
CREATE RULE Student_Email AS @Email LIKE '%@%'
SP_BINDRULE Student_Email , 'Student.ST_Email'


-- Rule --> Check The Instructor Salary > 0
CREATE RULE Instructor_Salary AS @Salary > 0
SP_BINDRULE Instructor_Salary , 'Instructor.Salary'
