

--Topic Table (Select)
-- Get Topic Information By Topic_ID 
CREATE OR ALTER PROC Get_Topic_Data (@Topic_ID INT)
AS
	SELECT Topic_ID, Topic_Name
	FROM Topic
	WHERE Topic_ID = @Topic_ID

Get_Topic_Data 2

------------------------------------------------------------------------------------------------

--- Topic Table (INSERT)
--- Insert New Record in Topic Table
CREATE OR ALTER PROCEDURE Insert_New_Topic 
   (@topic_ID int , @Topic_name varchar(20))
AS
    IF EXISTS (
        SELECT Topic_ID 
        FROM Topic 
        WHERE Topic_ID = @topic_ID
    )
	BEGIN
	   SELECT 'Existed Topic ID'As MESSAGE
	END
	ELSE
	BEGIN 
    -- Check if the record already exists
        INSERT INTO Topic(Topic_ID,Topic_Name)
        VALUES(@topic_ID,@Topic_name);
		SELECT 'Topic Inserted successfully'As MESSAGE
	END

Insert_New_Topic 15, 'Data Science & AI';

---------------------------------------------------------------------------------------------------
--- Topic Table (DELETE)
--- DELETE Record from Topic Table

CREATE OR ALTER PROCEDURE Delete_Topic (@Topic_ID INT)
AS
    -- Check if the record already exists
    IF NOT EXISTS (
        SELECT Topic_ID 
        FROM Topic 
        WHERE Topic_ID = @Topic_ID
    )
	BEGIN
	   SELECT 'Wrong ID Entered' AS Message;
	END
	ELSE
	BEGIN
        DELETE FROM Topic
        WHERE Topic_ID = @Topic_ID
		SELECT 'Topic deleted successfully' AS Message;
	END
    

Delete_Topic 15

-------------------------------------------------------------------------------------------
--- Topic Table (Update)
--- Update Topic By Topic_ID & Topic_name 
CREATE OR ALTER PROCEDURE Update_Topic_Name
    @Topic_ID INT,
    @New_topic	VARCHAR(20)
AS
    IF NOT EXISTS (
        SELECT Topic_ID 
        FROM Topic 
        WHERE Topic_ID = @Topic_ID
    )
	BEGIN
	   SELECT ' Topic ID Not Existed'As MESSAGE
	END
	ELSE IF EXISTS (
		SELECT Topic_Name
		FROM Topic
		WHERE Topic_Name = @New_topic
	)
	BEGIN
	   SELECT ' Topic Name Existed'As MESSAGE
	END
	ELSE 
	BEGIN      -- Update the Exam_Grade for the specified Exam_ID
        UPDATE Topic
        SET Topic_Name = @New_topic
        WHERE Topic_ID = @Topic_ID;

        -- Return a success message
        SELECT 'Topic updated successfully' AS Message;
    END;

Update_Topic_Name 15 , 'AI'

-------------------------------------------------------------------------------------




use [ITI_Graduation_Project]

--Exam Table (Select)
-- Get Exam Information By Exam_ID 
CREATE OR ALTER PROC Get_Exam_Data (@Exam_ID INT)
AS
	SELECT [Exam_Type],[Exam_Duration],[Start_Date],[End_Date],[Exam_Grade],[Course_ID]
	FROM Exam
	WHERE Exam_ID = @Exam_ID

Get_Exam_Data 2

------------------------------------------------------------------------------------------------

--- Exam Table (INSERT)
--- Insert New Record in Exam Table
CREATE OR alter PROCEDURE Insert_New_Exam
   (
    @Exam_Date_Time DATETIME,
    @Course_ID INT)
AS
    -- Check if the record already exists
        INSERT INTO Exam ( Course_ID,[Exam_Date])
        VALUES(  @Course_ID, @Exam_Date_Time);


Insert_New_Exam 1, 120, '2024-08-20 10:00:00', '2024-08-20 12:00:00', 90, 1;

---------------------------------------------------------------------------------------------------
--- Exam Table (DELETE)
--- DELETE Record from Exam Table

CREATE OR ALTER PROCEDURE Delete_Exam (@Exam_ID INT)
AS
    -- Check if the record already exists
    IF NOT EXISTS (
        SELECT Exam_ID 
        FROM Exam 
        WHERE Exam_ID = @Exam_ID
    )
	BEGIN
	   SELECT 'Wrong ID Entered'
	END
	ELSE
	BEGIN
        DELETE FROM Exam
        WHERE Exam_ID = @Exam_ID
		SELECT 'Exam deleted successfully' AS Message;
	END
    

Delete_Exam 3

-------------------------------------------------------------------------------------------
--- Exam Table (Update)
--- Update Exam By Exam_ID & Exam_grade
CREATE OR ALTER PROCEDURE Update_Exam_Grade
    @Exam_ID INT,
    @New_Grade INT
AS
BEGIN
    -- Check if the new grade is within the valid range
    IF @New_Grade BETWEEN 1 AND 10
    BEGIN
        -- Update the Exam_Grade for the specified Exam_ID
        UPDATE Exam
        SET Exam_Grade = @New_Grade
        WHERE Exam_ID = @Exam_ID;

        -- Return a success message
        SELECT 'Grade updated successfully' AS Message;
    END
    ELSE
    BEGIN
        -- Return an error message if the grade is out of range
        SELECT 'Grade must be between 1 and 10' AS Message;
    END
END;

Update_Exam_Grade 2,7

-------------------------------------------------------------------------------------



--Enrollment Table (Select)
-- Get Enrollment Information By ST_ID,COURSE_ID 
CREATE OR ALTER PROC Get_Enrollment_Data_stud (@ST_ID INT)
AS
    IF NOT EXISTS (
        SELECT ST_ID 
        FROM Enrollment 
        WHERE ST_ID= @ST_ID 
    )
	BEGIN
	   SELECT 'Student ID AND Couse ID is Not Existed' AS MESSAGE
	END
	ELSE
	SELECT Grade,ST_ID,Course_ID
	FROM Enrollment
	WHERE ST_ID = @ST_ID 

Get_Enrollment_Data_stud 1


CREATE OR ALTER PROC Get_Enrollment_Data_course (@Course_ID INT)
AS
    IF NOT EXISTS (
        SELECT [Course_ID] 
        FROM Enrollment 
        WHERE [Course_ID]= @Course_ID 
    )
	BEGIN
	   SELECT 'Student ID AND Couse ID is Not Existed' AS MESSAGE
	END
	ELSE
	SELECT Grade,ST_ID,Course_ID
	FROM Enrollment
	WHERE [Course_ID] = @Course_ID 

Get_Enrollment_Data_course 5
------------------------------------------------------------------------------------------------

--- Enrollment Table (INSERT)
--- Insert New Record in Enrollment Table
CREATE OR ALTER PROCEDURE Insert_New_Enrollment 
   (@Grade FLOAT , @ST_ID INT ,@Course_ID INT)
AS
    IF EXISTS (
        SELECT ST_ID,Course_ID 
        FROM Enrollment 
        WHERE ST_ID = @ST_ID AND Course_ID= @Course_ID
    )
	BEGIN
	   SELECT 'Existed Enrollment'As MESSAGE
	END
	ELSE
	BEGIN 
    -- Check if the record already exists
        INSERT INTO Enrollment(Grade,ST_ID,Course_ID)
        VALUES(@Grade,@ST_ID,@Course_ID);
		SELECT 'Enrollment Inserted successfully'As MESSAGE
	END

Insert_New_Enrollment 50,20,5

---------------------------------------------------------------------------------------------------
--- Enrollment Table (DELETE)
--- DELETE Record from Enrollment Table

CREATE OR ALTER PROCEDURE Delete_Enrollment (  @ST_ID INT , @Course_ID INT )
AS    IF NOT EXISTS (
        SELECT ST_ID,Course_ID 
        FROM Enrollment 
        WHERE ST_ID = @ST_ID AND Course_ID= @Course_ID
    )
	BEGIN
	   SELECT 'NOT Existed Enrollment'As MESSAGE
	END
	ELSE
	BEGIN 
         DELETE FROM Enrollment
        WHERE ST_ID = @ST_ID AND Course_ID =@Course_ID 
		SELECT 'Enrollment deleted successfully' AS Message;
	END
    

Delete_Enrollment 2,20

-------------------------------------------------------------------------------------------
--- Enrollment Table (Update)
--- Update Enrollment By St_ID & Course_ID
CREATE OR ALTER PROCEDURE Update_Enrollment_Grade
    @New_Grade FLOAT,
	@ST_ID INT,
    @Course_ID INT
AS
BEGIN
    -- Check if the new grade is within the valid range
    IF @New_Grade BETWEEN 20 AND 100
    BEGIN
        -- Update the Exam_Grade for the specified Exam_ID
        UPDATE Enrollment
        SET Grade = @New_Grade
        WHERE ST_ID = @ST_ID AND Course_ID = @Course_ID;

        -- Return a success message
        SELECT 'Grade updated successfully' AS Message;
    END
    ELSE
    BEGIN
        -- Return an error message if the grade is out of range
        SELECT 'Grade must be between 20 and 100' AS Message;
    END
END;

Update_Enrollment_Grade 70.52 , 1 , 4

-------------------------------------------------------------------------------------

