

----------------- students that don't have a job -----------------
SELECT [ST_ID],[Student_Fname]+' '+[Student_Lname] AS 'Full Name' ,[ST_Email] AS 'Email',[ST_Phone] AS 'Phone'
FROM [dbo].[Student]
WHERE [ST_ID] NOT IN 
(
SELECT  [Student_ID] FROM [dbo].[Job]
)

----------------- students that don't have a Freelancing job -----------------
SELECT [ST_ID],[Student_Fname]+' '+[Student_Lname] AS 'Full Name' ,[ST_Email] AS 'Email',[ST_Phone] AS 'Phone'
FROM [dbo].[Student]
WHERE [ST_ID] NOT IN 
(
SELECT  [Student_ID] FROM [dbo].[Freelancing]
)