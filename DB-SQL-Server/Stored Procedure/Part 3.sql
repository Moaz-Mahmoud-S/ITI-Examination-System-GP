




----------------------------Freelancing Table SP--------------------------



--- PROCEDURE 
--- Freelancing Table (SELECT)
--- Get Freelancing Information By Student_ID



CREATE PROCEDURE Get_Freelancers_Data (@id INT)
AS
   SELECT *
   FROM Freelancing
   WHERE Student_ID = @id



--Example :
Get_Freelancers_Data 20



--------------------------------------------------------------------------------------


--- PROCEDURE 
--- Freelancing Table (INSERT)
--- Insert New Record in Freelancing Table



CREATE PROCEDURE Insert_Freelancer 
    (  
    @Website_Name VARCHAR(20), 
    @Client_Name VARCHAR(20), 
    @Client_Country VARCHAR(20), 
    @Budget INT, 
    @Status VARCHAR(20), 
    @St_ID INT)
AS
    -- Check if the record already exists

        -- Insert the record if it does not exist
        INSERT INTO Freelancing( Website_Name, Client_Name, Client_Country, Budget, Status, Student_ID)
        VALUES( @Website_Name, @Client_Name, @Client_Country, @Budget, @Status, @St_ID);

    -- Return a message if the record already exists


-- Example:  
 Insert_Freelancer 1000, 'Upwork', 'John', 'USA', 2000, 'Done', 12;



--------------------------------------------------------------------------------------


--- PROCEDURE 
--- Freelancing Table (DELETE)
--- Delete Freelancing Record By Student_ID



CREATE PROCEDURE Delete_Freelancer (@Student_ID INT)
AS
    -- Check if the record already exists
    IF EXISTS (
        SELECT Student_ID 
        FROM Freelancing 
        WHERE Student_ID = @Student_ID
    )
        -- Delete the record
        DELETE FROM Freelancing
        WHERE Student_ID = @Student_ID
    ELSE
        -- Error Message
        SELECT 'Wrong ID Entered'

-- Example:
Delete_Freelancer 12;



--------------------------------------------------------------------------------------


--- PROCEDURE 
--- Freelancing Table (Update)
--- Update Status By Freelancing_ID



CREATE PROCEDURE Update_Status (@Freelancing_ID INT)
AS
    -- Check if the record already exists
    IF EXISTS (
        SELECT Freelancing_ID 
        FROM Freelancing 
        WHERE Freelancing_ID = @Freelancing_ID
    )
        -- Update status
        UPDATE Freelancing
        SET Status = 'Done'
		where Freelancing_ID = @Freelancing_ID
    ELSE
        -- Error Message
        SELECT 'Wrong ID Entered'

--Example:

Update_Status 15






----------------------------Job Table SP--------------------------


--- PROCEDURE 
--- Job Table (SELECT)
--- Get Job Information By Student_ID


CREATE PROCEDURE Get_Job_Data (@id INT)
AS
   SELECT *
   FROM Job
   WHERE Student_ID = @id

---Example:
Get_Job_Data 500



--------------------------------------------------------------------------------------


--- PROCEDURE 
--- Job Table (INSERT)
--- Insert New Record in Job Table

CREATE PROCEDURE Insert_Job 
    (  
      @Company_Name VARCHAR(20)
      ,@Job_Role VARCHAR(25)
      ,@Salary INT
      ,@Multinational BIT
      ,@Student_ID INT)
AS
    -- Check if the record already exists

        -- Insert the record if it does not exist
        INSERT INTO Job(   Company_Name , Job_Role , Salary ,Multinational , Student_ID)
        VALUES(  @Company_Name,@Job_Role,@Salary,@Multinational,@Student_ID);


-- Example: 

Insert_Job 1000, 'Microsoft', 'Data Analyst', 15000 , 1 , 120000 ;



--------------------------------------------------------------------------------------

--- PROCEDURE 
--- Job Table (DELETE)
--- Delete Job Record By Student_ID

CREATE PROCEDURE Delete_Job (@Student_ID INT)
AS
    -- Check if the record already exists
    IF EXISTS (
        SELECT Student_ID 
        FROM Job 
        WHERE Student_ID = @Student_ID
    )
        -- Delete the record
        DELETE FROM Job
        WHERE Student_ID = @Student_ID
    ELSE
        -- Error Message
        SELECT 'Wrong ID Entered'

-- Example:

Delete_Job 12;


--------------------------------------------------------------------------------------


--- PROCEDURE 
--- Job Table (Update)
--- Update Salary By Student_ID

CREATE PROCEDURE Update_Salary (@Student_ID INT)
AS
    -- Check if the record already exists
    IF EXISTS (
        SELECT Student_ID 
        FROM Job 
        WHERE Student_ID = @Student_ID
    )
        -- Update status
        UPDATE Job
        SET Salary = 180000
		where Student_ID = @Student_ID
    ELSE
        -- Error Message
        SELECT 'Wrong ID Entered'

--Example:
Update_Salary 5







----------------------------Student Table SP--------------------------


--- PROCEDURE 
--- Student Table (SELECT)
--- Get Student Information By Student_ID


CREATE PROCEDURE Get_Student_Data (@id INT)
AS
   SELECT *
   FROM Student
   WHERE ST_ID = @id

---Example:
Get_Student_Data 500



--------------------------------------------------------------------------------------


--- PROCEDURE 
--- Student Table (INSERT)
--- Insert New Record in Student Table

CREATE OR ALTER  PROCEDURE Insert_Student 
    ( 
      @Student_Fname VARCHAR(20)
      ,@Student_Lname VARCHAR(20)
      ,@ST_Address VARCHAR(50)
      ,@ST_Email VARCHAR(25)
      ,@ST_Phone VARCHAR(11)
      ,@ST_Gender CHAR(1)
      ,@ST_DOB DATE
      ,@Branch_ID INT
      ,@Dep_ID INT
      ,@Track_ID INT
	  ,@social_media varchar(200) = NULL)
AS
    -- Check if the record already exists

	 -- Insert the record if it does not exist
	begin try
		declare @st_id int;
		Select @st_id = max([ST_ID]) from [dbo].[Student]
		set @st_id+=1
        INSERT INTO Student(ST_ID,Student_Fname, Student_Lname,ST_Address ,ST_Email ,ST_Phone,ST_Gender,ST_DOB,Branch_ID ,Dep_ID ,Track_ID ,ST_SocialMedia )
        VALUES( @st_id ,@Student_Fname ,@Student_Lname,@ST_Address,@ST_Email ,@ST_Phone,@ST_Gender ,@ST_DOB ,@Branch_ID ,@Dep_ID ,@Track_ID,@social_media );
	end try
	begin catch
	  -- Return a message if the record already exists
    SELECT 'Data Exists' AS Message;
	end catch
       
		
    
  

-- Example: 

Insert_Student  'm', 'm', 'm' , 'm@m.com' , '01206693913' , 'M' , '2000-05-05' , 5 , 10  , 15 ;



--------------------------------------------------------------------------------------

--- PROCEDURE 
--- Student Table (DELETE)
--- Delete Student Record By Student_ID

CREATE PROCEDURE Delete_Student (@Student_ID INT)
AS
    -- Check if the record already exists
    IF EXISTS (
        SELECT ST_ID 
        FROM Student 
        WHERE ST_ID = @Student_ID
    )
        -- Delete the record
        DELETE FROM Student
        WHERE ST_ID = @Student_ID
    ELSE
        -- Error Message
        SELECT 'Wrong ID Entered'

-- Example:

Delete_Student 1100;


--------------------------------------------------------------------------------------


--- PROCEDURE 
--- Student Table (Update)
--- Update Phone By Student_ID

CREATE PROCEDURE Update_Phone (@Student_ID INT)
AS
    -- Check if the record already exists
    IF EXISTS (
        SELECT ST_ID 
        FROM Student 
        WHERE ST_ID = @Student_ID
    )
        -- Update status
        UPDATE Student
        SET ST_Phone = '01003456822'
		WHERE ST_ID = @Student_ID
	
    ELSE
        -- Error Message
        SELECT 'Wrong ID Entered'

--Example:
Update_Phone 5



