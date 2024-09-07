-- Insert random data into the dbo.Job table
use [ITI_Graduation_Project]

INSERT INTO dbo.Job ([Company_Name], [Job_Role], Multinational, [Student_ID], Salary)
SELECT 
     [Company_Name]= CASE 
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 1 THEN 'TechCorp'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 2 THEN 'Innovatech'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 3 THEN 'Data Solutions'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 4 THEN 'GlobalSoft'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 5 THEN 'NextGen Technologies'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 6 THEN 'Bright Future Inc.'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 7 THEN 'Code Masters'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 8 THEN 'Infotech Hub'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 9 THEN 'Quantum Dynamics'
        ELSE 'CyberNet Systems'
    END,
    [Job_Role] = CASE 
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 1 THEN 'Data Analyst'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 2 THEN 'Software Engineer'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 3 THEN 'Business Analyst'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 4 THEN 'System Administrator'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 5 THEN 'Database Administrator'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 6 THEN 'Project Manager'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 7 THEN 'Network Engineer'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 8 THEN 'Cybersecurity Specialist'
        WHEN (ABS(CHECKSUM(NEWID())) % 10) + 1 = 9 THEN 'DevOps Engineer'
        ELSE 'Machine Learning Eng'
    END,
    Multinational = ABS(CHECKSUM(NEWID())) % 2, -- Generates 0 or 1
    [Student_ID] = ABS(CHECKSUM(NEWID())) % 980 + 1, -- Generates a StudentID from 1 to 980
    Salary = ROUND((RAND(CHECKSUM(NEWID())) * (40000 - 10000) + 40000), 0) -- Generates a random salary between 40,000 and 100,000
FROM 
    (SELECT TOP 980 ROW_NUMBER() OVER (ORDER BY NEWID()) AS RowNum FROM sys.all_objects) AS T;




DECLARE @StartDate DATE = '2024-08-01';
DECLARE @EndDate DATE = '2024-08-31';



Declare Job_Date Cursor
for select [Company_ID],[Hire_Date] from [dbo].[Job]

declare @hiredate date,@companyid int;

open Job_Date

Fetch next from Job_Date into @companyid,@hiredate

while @@Fetch_Status =0 
begin
	SET @hiredate = DATEADD(DAY, ABS(CHECKSUM(NEWID())) % (DATEDIFF(DAY, @StartDate, @EndDate) + 1), @StartDate);

	Update[dbo].[Job] 
	set [Hire_Date] = @hiredate
	where [Company_ID]=@companyid
	
	Fetch next from Job_Date into @companyid,@hiredate
end

Close Job_Date

deallocate Job_Date