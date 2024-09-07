



INSERT INTO Freelancing (Website_Name, Client_Name, Client_Country, Budget, Status, Student_ID)
SELECT TOP 150
    CASE WHEN ABS(CHECKSUM(NewId())) % 3 = 0 THEN 'Freelancing'
         WHEN ABS(CHECKSUM(NewId())) % 3 = 1 THEN 'Upwork'
         ELSE 'Mostkl' END AS Website_Name,
    'Client' AS Client_Name,
    CASE WHEN ABS(CHECKSUM(NewId())) % 6 = 0 THEN 'USA'
         WHEN ABS(CHECKSUM(NewId())) % 6 = 1 THEN 'Ireland'
         WHEN ABS(CHECKSUM(NewId())) % 6 = 2 THEN 'India'
         WHEN ABS(CHECKSUM(NewId())) % 6 = 3 THEN 'Saudi Arabia'
         WHEN ABS(CHECKSUM(NewId())) % 6 = 4 THEN 'Egypt'
         ELSE 'Kuwait' END AS Client_Country,
    ABS(CHECKSUM(NewId())) % 90 + 10 AS Budget,  -- Adjusted budget range
    'In Progress' AS Status,
    ABS(CHECKSUM(NewId())) % 980 + 1 AS Student_ID
FROM sys.objects;

select * from [dbo].[Freelancing]


select count(distinct j.[Student_ID])
from [dbo].[Freelancing] as f inner join [dbo].[Job] as j
on f.[Student_ID] = j.[Student_ID]

-- remve duplicates 
WITH DuplicateRows AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY [Student_ID] ORDER BY [Student_ID]) AS RowNumber
  FROM [dbo].[Job]
)
DELETE FROM DuplicateRows
WHERE RowNumber > 1;


select count( [Student_ID]) from [dbo].[Job]

select count(distinct [Student_ID]) from [dbo].[Freelancing]









DECLARE @StartDate DATE = '2024-08-01';
DECLARE @EndDate DATE = '2024-08-31';


Declare Freelaning_Date Cursor
for select [Freelancing_ID],[Task_Date] from [dbo].[Freelancing]

declare @taskdate date,@taskid int;

open Freelaning_Date

Fetch next from Freelaning_Date into @taskid,@taskdate

while @@Fetch_Status =0 
begin
	SET @taskdate = DATEADD(DAY, ABS(CHECKSUM(NEWID())) % (DATEDIFF(DAY, @StartDate, @EndDate) + 1), @StartDate);

	Update [dbo].[Freelancing]
	set [Task_Date] = @taskdate
	where [Freelancing_ID]=@taskid
	
	Fetch next from Freelaning_Date into @taskid,@taskdate
end

Close Freelaning_Date

deallocate Freelaning_Date
