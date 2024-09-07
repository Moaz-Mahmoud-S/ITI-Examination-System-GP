-- Insert 980 rows of data into the Student table
use [ITI_Graduation_Project]
WITH NameList AS (
    SELECT 'Ahmed' AS FirstName, 'M' AS Gender UNION ALL
    SELECT 'Mohamed', 'M' UNION ALL
    SELECT 'Ali', 'M' UNION ALL
    SELECT 'Hassan', 'M' UNION ALL
    SELECT 'Omar', 'M' UNION ALL
    SELECT 'Youssef', 'M' UNION ALL
    SELECT 'Mahmoud', 'M' UNION ALL
    SELECT 'Tarek', 'M' UNION ALL
    SELECT 'Ibrahim', 'M' UNION ALL
    SELECT 'Khaled', 'M' UNION ALL
    SELECT 'Mustafa', 'M' UNION ALL
    SELECT 'Amr', 'M' UNION ALL
    SELECT 'Ehab', 'M' UNION ALL
    SELECT 'Sami', 'M' UNION ALL
    SELECT 'Nader', 'M' UNION ALL
    SELECT 'Maged', 'M' UNION ALL
    SELECT 'Ayman', 'M' UNION ALL
    SELECT 'Fadi', 'M' UNION ALL
    SELECT 'Walid', 'M' UNION ALL
    SELECT 'Sameh', 'M' UNION ALL
    SELECT 'Sara', 'F' UNION ALL
    SELECT 'Fatma', 'F' UNION ALL
    SELECT 'Nour', 'F' UNION ALL
    SELECT 'Amina', 'F' UNION ALL
    SELECT 'Leila', 'F' UNION ALL
    SELECT 'Heba', 'F' UNION ALL
    SELECT 'Mona', 'F' UNION ALL
    SELECT 'Nadia', 'F' UNION ALL
    SELECT 'Hana', 'F' UNION ALL
    SELECT 'Mai', 'F' UNION ALL
    SELECT 'Dina', 'F' UNION ALL
    SELECT 'Rania', 'F' UNION ALL
    SELECT 'Lamia', 'F' UNION ALL
    SELECT 'Shereen', 'F' UNION ALL
    SELECT 'Hind', 'F' UNION ALL
    SELECT 'Samia', 'F' UNION ALL
    SELECT 'Sahar', 'F' UNION ALL
    SELECT 'Marwa', 'F' UNION ALL
    SELECT 'Nesma', 'F' UNION ALL
    SELECT 'Inas', 'F' UNION ALL
    SELECT 'Rana', 'F' UNION ALL
    SELECT 'Doaa', 'F' UNION ALL
    SELECT 'Asmaa', 'F' UNION ALL
    SELECT 'Menna', 'F' UNION ALL
    SELECT 'Riham', 'F' UNION ALL
    SELECT 'Nahla', 'F' UNION ALL
    SELECT 'Nada', 'F' UNION ALL
    SELECT 'Lobna', 'F' UNION ALL
    SELECT 'Yasmin', 'F' 
)
INSERT INTO Student (ST_ID, Student_Fname, Student_Lname, ST_Address, ST_Email, ST_Phone, ST_Gender, ST_DOB, Hired, Branch_ID, Dep_ID)
SELECT 
    ROW_NUMBER() OVER (ORDER BY NEWID()) AS ST_ID,
    FirstName AS Student_Fname,
    LastName AS Student_Lname,
    CASE 
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 1 THEN 'Cairo'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 2 THEN 'Alexandria'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 3 THEN 'Giza'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 4 THEN 'Mansoura'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 5 THEN 'Tanta'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 6 THEN 'Asyut'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 7 THEN 'Zagazig'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 8 THEN 'Suez'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 9 THEN 'Ismailia'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 10 THEN 'Aswan'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 11 THEN 'Luxor'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 12 THEN 'Faiyum'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 13 THEN 'Qena'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 14 THEN 'Beni Suef'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 15 THEN 'Damietta'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 16 THEN 'Sohag'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 17 THEN 'Minya'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 18 THEN 'Hurghada'
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 20) = 19 THEN 'Port Said'
        ELSE 'Arish'
    END AS ST_Address,
    CONCAT('student', ROW_NUMBER() OVER (ORDER BY NEWID()), '@gmail.com') AS ST_Email,
    CONCAT('01', RIGHT('000000000' + CAST(ABS(CHECKSUM(NEWID())) % 1000000000 AS VARCHAR(9)), 9)) AS ST_Phone,
    Gender AS ST_Gender,
    DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 731, '1999-01-01') AS ST_DOB,

    ABS(CHECKSUM(NEWID()) % 14) + 1 AS Branch_ID,  -- Random value between 1 and 14

    CASE 
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 5) = 1 THEN 10
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 5) = 2 THEN 20
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 5) = 3 THEN 30
        WHEN (ROW_NUMBER() OVER (ORDER BY NEWID()) % 5) = 4 THEN 40
        ELSE 50
    END AS Dep_ID  -- Random value between 10, 20, 30, 40, 50
FROM 
    NameList
CROSS JOIN 
    (SELECT TOP 50 'Ahmed' AS LastName UNION ALL
     SELECT 'Mohamed' UNION ALL
     SELECT 'Ali' UNION ALL
     SELECT 'Hassan' UNION ALL
     SELECT 'Omar' UNION ALL
     SELECT 'Youssef' UNION ALL
     SELECT 'Mahmoud' UNION ALL
     SELECT 'Tarek' UNION ALL
     SELECT 'Ibrahim' UNION ALL
     SELECT 'Khaled' UNION ALL
     SELECT 'Mustafa' UNION ALL
     SELECT 'Amr' UNION ALL
     SELECT 'Ehab' UNION ALL
     SELECT 'Sami' UNION ALL
     SELECT 'Nader' UNION ALL
     SELECT 'Maged' UNION ALL
     SELECT 'Ayman' UNION ALL
     SELECT 'Fadi' UNION ALL
     SELECT 'Walid' UNION ALL
     SELECT 'Sameh') AS LastNames;



UPDATE Student
SET track_id = ABS(CHECKSUM(NewId())) % 20 + 1;


  update student
set st_phone = case when substring(st_phone,3,1) = 3
						then replace(st_phone,substring(st_phone,3,1),0)
					when substring(st_phone,3,1) = '4'
						then replace(st_phone,substring(st_phone,3,1),0)
					when substring(st_phone,3,1) = '6'
						then replace(st_phone,substring(st_phone,3,1),1)
					when substring(st_phone,3,1) = '7'
						then replace(st_phone,substring(st_phone,3,1),1)
					when substring(st_phone,3,1) = '8'
						then replace(st_phone,substring(st_phone,3,1),2)
					when substring(st_phone,3,1) = '9'
						then replace(st_phone,substring(st_phone,3,1),5)
					else
						st_phone
				end


update student
set st_email = replace(st_email, substring(st_email,1,charindex('@',st_email)-1), concat_ws('.',Student_Fname,Student_Lname))



-------------- Add Student Track Based on Branch --------------

declare stud_branch_cr cursor 
	for select [Branch_ID],[ST_ID] from [dbo].[Student]

declare @bid int , @stid int;

open stud_branch_cr

fetch next from stud_branch_cr into @bid,@stid



Declare @w int 

while (@@FETCH_STATUS = 0 )
begin
	if @bid = 1
	begin
		SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 1
		WHEN 1 THEN 2
		ELSE 3
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end

	else if @bid = 2
	begin

	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 4
		WHEN 1 THEN 5
		ELSE 6
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end

	else if @bid = 3
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 7
		WHEN 1 THEN 8
		ELSE 9
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end
	else if @bid = 4
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 10
		WHEN 1 THEN 11
		ELSE 12
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end

	else if @bid = 5
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 13
		WHEN 1 THEN 14
		ELSE 15
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end
	else if @bid = 6
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 16
		WHEN 1 THEN 17
		ELSE 18
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end
	else if @bid = 7
	begin

	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 19
		WHEN 1 THEN 20
		ELSE 2
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end
	else if @bid = 8
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 4
		WHEN 1 THEN 6
		ELSE 8
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end
	else if @bid = 9
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 10
		WHEN 1 THEN 13
		ELSE 15
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end
	else if @bid = 10
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 1
		WHEN 1 THEN 2
		ELSE 20
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end
	else if @bid = 11
	begin

	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 3
		WHEN 1 THEN 7
		ELSE 15
		END 
		update [dbo].[Student]
		set [Track_ID] =@w
		where [ST_ID] = @stid
    end
	else if @bid = 12
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 11
		WHEN 1 THEN 17
		ELSE 18
		END 
		update [dbo].[Student]
		set [Track_ID] =@w
		where [ST_ID] = @stid
    end
	else if @bid = 13
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 4
		WHEN 1 THEN 5
		ELSE 9
		END 
		update [dbo].[Student]
		set [Track_ID] =@w
		where [ST_ID] = @stid
    end
		else if @bid = 14
	begin
	SELECT @w = CASE ABS(CHECKSUM(NEWID())) % 3
		WHEN 0 THEN 1
		WHEN 1 THEN 16
		ELSE 8
		END 
		update [dbo].[Student]
		set [Track_ID] =@w 
		where [ST_ID] = @stid
    end

	fetch next from stud_branch_cr into @bid,@stid

end

close stud_branch_cr

deallocate stud_branch_cr

/*
select count([ST_ID]) , b.Branch_Name , tb.Track_ID
from [dbo].[Student] as s inner join [dbo].[Branch] as b
on s.Branch_ID = b.Branch_ID inner join [dbo].[Track_Branch] as tb 
on b.Branch_ID = tb.Branch_ID and s.[Track_ID] = tb.[Track_ID]
group by b.Branch_Name , tb.Track_ID
order by b.Branch_Name


select count ([ST_ID]) , b.Branch_Name
from [dbo].[Student] as s inner join [dbo].[Branch] as b
on s.Branch_ID = b.Branch_ID
group by b.Branch_Name --, tb.Track_ID



select count ([ST_ID]) , t.[Track_Name]
from [dbo].[Student] as s inner join[dbo].[Track] as t
on s.[Track_ID] = t.[Track_ID]
group by t.[Track_Name]*/