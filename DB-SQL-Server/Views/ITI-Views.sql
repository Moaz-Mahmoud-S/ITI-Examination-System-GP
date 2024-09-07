



-------------------------------------SQL Views------------------------------------



-----VIEW to display Average grades for students by Branch and Tracks 

CREATE VIEW AVG_Grades_V
AS
   SELECT B.Branch_Name , T.Track_Name , AVG(E.Grade) AS AVG_Grade
   FROM Student S INNER JOIN Track T
   ON S.Track_ID = T.Track_ID
   INNER JOIN Enrollment E
   ON S.ST_ID = E.ST_ID
   INNER JOIN Branch B
   ON S.Branch_ID = B.Branch_ID
   GROUP BY B.Branch_Name , T.Track_Name


SELECT * FROM AVG_Grades_V


-----VIEW to display MAX & MIN $ budget and freelancing platform for freelancing jobs 

CREATE VIEW Budget_V
AS
  SELECT F.Website_Name , MAX(Budget) AS MAX_Budget , MIN(Budget) AS MIN_Budget
  FROM Student S INNER JOIN Freelancing F
  ON S.ST_ID = F.Student_ID
  GROUP BY F.Website_Name

SELECT * FROM Budget_V


----- VIEW to display MAX & MIN $ Salary and Company Name for Student who got jobs 

CREATE VIEW S_Salary_V
AS
  SELECT J.Company_Name , J.Job_Role , MAX(J.Salary) AS MAX_Salary , MIN(J.Salary) AS MIN_Salary
  FROM Student S INNER JOIN Job J
  ON S.ST_ID = J.Student_ID
  GROUP BY J.Company_Name , J.Job_Role

SELECT * FROM S_Salary_V


-----VIEW to display # of Students for every branch

CREATE VIEW Total_Students_V
AS
  SELECT B.Branch_Name , COUNT(ST_ID) AS Total_Student
  FROM Student S INNER JOIN Branch B
  ON S.Branch_ID = B.Branch_ID
  GROUP BY B.Branch_Name 

SELECT * FROM Total_Students_V