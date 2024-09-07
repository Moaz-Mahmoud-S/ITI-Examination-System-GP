
-------------------------------------- SSRS Stored Procedures ------------------------------------

-- 1/ Creating PROCEDURE to get Instructor Courses & #_Students Enroll by Instructor ID
CREATE OR ALTER PROCEDURE Student_Courses (@Ins_ID INT)
AS
	SELECT C.Course_Name, COUNT(E.ST_ID) AS #_Students
	FROM Enrollment AS E  JOIN Course AS C
	ON E.Course_ID = C.Course_ID JOIN Instructor_Course AS IC
	ON C.Course_ID = IC.Course_ID JOIN Instructor AS I
	ON I.Instructor_ID = IC.Instructor_ID AND I.Instructor_ID = @Ins_ID
	GROUP BY C.Course_Name

 Student_Courses 3
---------------------
-- 2/ Creating PROCEDURE to get Student Information by Department ID
CREATE OR ALTER PROCEDURE Get_ST_Info_Dept (@Dept_No INT)
AS
  SELECT s.[Dep_ID],[ST_ID],[Student_Fname],[Student_Lname],[ST_Address],[ST_Email],[ST_Phone],[ST_Gender],[ST_DOB],[ST_Age],B.Branch_Name,t.Track_Name
  FROM Student S inner join [dbo].[Branch] as B
  on B.Branch_ID = S.[Branch_ID] inner join [dbo].[Track] as t
  on t.Track_ID=s.[Track_ID] inner join  Department D
  on s.[Dep_ID] = D.Dep_ID
  WHERE D.Dep_ID = @Dept_No AND D.Dep_ID = S.Dep_ID

  Get_ST_Info_Dept 10
---------------------
-- 3/ Creating PROCEDURE to get Courses by Topic ID
CREATE OR ALTER PROCEDURE Get_Topic_Courses (@Topic_Name varchar(50))
AS
	SELECT Course_ID, Course_Name, Course_Description 
	FROM Topic T Join Course 
	ON T.[Topic_Name] =@Topic_Name  AND T.Topic_ID = Course.Topic_ID

 Get_Topic_Courses 'Programming'
---------------------
 -- 4/ Creating PROCEDURE to get Student Grades for all courses by studentID
CREATE OR ALTER PROCEDURE GetSTGrades (@id INT)
AS
  SELECT C.Course_Name, E.Grade
  FROM Enrollment AS E JOIN Course AS C
  ON E.Course_ID = C.Course_ID AND E.ST_ID = @id

 GetSTGrades 5 
---------------------
--5/ Creating PROCEDURE to get Questions of Exam & Student Answers
CREATE OR ALTER PROCEDURE ST_Exam_QA (@Exam_ID INT , @ST_ID INT)
AS
	SELECT Q.Question, S.Student_Answer , Case when S.Student_Answer = C.Choice AND C.Right_Choice = 1 then 1 else 0 end as status
	FROM Question AS Q inner JOIN Student_Solution AS S
	ON Q.Question_ID = S.Question_ID 
	inner JOIN Choices AS C
	ON Q.Question_ID = C.Question_ID inner JOIN Course AS CS
	ON CS.Course_ID = Q.Course_ID inner	JOIN Exam AS E
	ON E.Exam_ID = S.Exam_ID and C.Right_Choice = 1 AND E.Exam_ID = @Exam_ID AND S.Student_ID = @ST_ID

  ST_Exam_QA 26 , 5
---------------------
--6/ Creating PROCEDURE to get the Questions and chocies [freeform report] by exam number
CREATE OR ALTER PROCEDURE GetExamINFO @Exam_ID INT
AS
   IF EXISTS (SELECT Exam_ID FROM Exam WHERE Exam_ID = @Exam_ID)
	  SELECT Q.Question , C.Choice
	  FROM Exam E INNER JOIN Question Q
	  ON E.Course_ID = Q.Course_ID
	  INNER JOIN Choices C
	  ON Q.Question_ID = C.Question_ID AND E.Exam_ID = @Exam_ID
   ELSE 
	  SELECT 'Exam Not Found'

GetExamINFO 5
---------------------