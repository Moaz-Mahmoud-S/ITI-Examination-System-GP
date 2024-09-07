


CREATE OR ALTER FUNCTION Branch_Description (@Branchid int)
returns Varchar(max)
as
begin
	IF NOT EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_ID]=@Branchid )
	RETURN 'NO Branch Found'

	ELSE
		
			Declare @branchname varchar(50),@branchgov varchar(50),@description varchar(max);

			Declare @studentnum int;

			SELECT @branchname=[Branch_Name] FROM [dbo].[Branch] WHERE [Branch_ID]=@Branchid

			SELECT @branchgov=[Branch_Gov] FROM [dbo].[Branch] WHERE [Branch_ID]=@Branchid

			SELECT @studentnum=count([ST_ID]) FROM [dbo].[Student] WHERE [Branch_ID]=@Branchid

			set @description = 'Branch ' +@branchname+' in '+ @branchgov + ' gov has '+ CONVERT(varchar(10), @studentnum) + ' Student'

			RETURN @description
		
end

SELECT [dbo].[Branch_Description] (1)



CREATE OR ALTER FUNCTION dbo.GetStudentsByGovAsXML()
RETURNS XML
AS
BEGIN
    RETURN (
        SELECT 
            B.Branch_Gov,
            COUNT(S.ST_ID) AS Total_Students
        FROM 
            Student S 
        INNER JOIN 
            Branch B ON S.Branch_ID = B.Branch_ID
        GROUP BY 
            B.Branch_Gov
        FOR XML RAW('Student'), ELEMENTS XSINIL, ROOT('ITI-Students-Gov')
    );
END;

SELECT dbo.GetStudentsByGovAsXML() AS StudentsDataXML;



CREATE OR ALTER FUNCTION STudent_Course_Exam_Grade (@stid int)
RETURNS TABLE
as
	RETURN SELECT s.[Student_Fname] , c.[Course_Name] , e.Grade
	FROM [dbo].[Enrollment] as e inner join [dbo].[Student] as s
	on e.[ST_ID] = s.[ST_ID] inner join [dbo].[Course] as c
	on e.[Course_ID] = c.[Course_ID] inner join [dbo].[Exam] as x
	on x.Course_ID = c.Course_ID
	where s.ST_ID=@stid

SELECT *
FROM dbo.STudent_Course_Exam_Grade (5)



CREATE OR ALTER FUNCTION HIRED_COMPANY ()
RETURNS TABLE
AS
RETURN SELECT COUNT([Student_ID]) as '# ',[Company_Name]
	    FROM [dbo].[Job]
		GROUP BY ([Company_Name])

SELECT * 
FROM dbo.HIRED_COMPANY()


CREATE OR ALTER FUNCTION Student_Track ()
RETURNS TABLE
AS
	RETURN SELECT COUNT(S.ST_ID) AS '#',T.Track_Name
		   FROM [dbo].[Student] AS S INNER JOIN [dbo].[Track] AS T
		   ON S.Track_ID = T.Track_ID
		   GROUP BY T.Track_Name

SELECT *
FROM dbo.Student_Track()