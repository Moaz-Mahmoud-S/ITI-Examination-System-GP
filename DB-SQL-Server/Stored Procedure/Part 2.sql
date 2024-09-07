USE [ITI_Graduation_Project]

-- Department Table --
-- PROCEDURE
-- Department Table (SELECT)
-- Get Department Information By Department_ID
CREATE OR ALTER PROCEDURE Get_Department_Data (@Department_ID INT)
AS
	SELECT Dep_Name AS Department_Name, Dep_manger AS Department_Manager_ID
	FROM Department
	WHERE Dep_ID = @Department_ID

Get_Department_Data 20	-- -- Done

							-----------------------------------------------------------------------

-- PROCEDURE
-- Department Table (INSERT)
-- Insert New Department all Columns
CREATE OR ALTER PROCEDURE Insert_New_Department (@Department_ID INT, @Department_Name VARCHAR(20), @Dep_Mgr_Hiredate DATE, @Dep_Mgr_ID INT)
AS
	IF EXISTS (SELECT Dep_ID FROM Department WHERE Dep_ID = @Department_ID)
		SELECT 'Existed Department ID!'
	ELSE
		INSERT INTO Department (Dep_ID, Dep_Name, Dep_mang_hiredate, Dep_manger)
		VALUES (@Department_ID, @Department_Name, @Dep_Mgr_Hiredate, @Dep_Mgr_ID)

Insert_New_Department 1000, 'Dummy', '2024-08-15', 30	-- Done
Insert_New_Department 10, 'Dummy', '2024-08-15', 30		-- Existed Department ID!

							-----------------------------------------------------------------------

-- PROCEDURE
-- Department Table (UPDATE)
-- Update Department Name By Department ID
CREATE OR ALTER PROCEDURE Update_Department (@Department_ID INT, @Department_Name VARCHAR(20))
AS
	IF EXISTS (SELECT Dep_ID FROM Department WHERE Dep_ID = @Department_ID)
		UPDATE Department
			SET Dep_Name = @Department_Name
			WHERE Dep_ID = @Department_ID
	ELSE	
		SELECT 'Enter Right Department_ID'

Update_Department 1000, 'Dummy_Dept'  -- Done
Update_Department 3000, 'testing'  -- Enter Right Department_ID

							-----------------------------------------------------------------------

-- PROCEDURE
-- Department Table (DELETE)
-- Delete Department Record By Department ID
CREATE OR ALTER PROCEDURE Delete_Department (@Department_ID INT)
AS
	IF EXISTS (SELECT Dep_ID FROM Department WHERE Dep_ID = @Department_ID)
		DELETE FROM Department
		WHERE Dep_ID = @Department_ID
	ELSE	
		SELECT 'Enter Right Department_ID'

Delete_Department 2000  -- Enter Right Department_ID
Delete_Department 1000  -- Done

							-----------------------------------------------------------------------

-- Instructor Table --
-- PROCEDURE
-- Instructor Table (SELECT)
-- Get Instructor Information By Instructor_ID
CREATE OR ALTER PROCEDURE Get_Instructor_Data (@Instructor_ID INT)
AS
	SELECT Instructor_Name, Ins_Degree, Salary, Department_ID
	FROM Instructor
	WHERE Instructor_ID = @Instructor_ID

Get_Instructor_Data 10	-- Done

							---------------------------------------------------------------------

-- PROCEDURE
-- Instructor Table (INSERT)
-- Insert New Instructor all Columns
CREATE OR ALTER PROCEDURE Insert_New_Instructor (@Instructor_ID INT, @Instructor_Name VARCHAR(20), @Instructor_Degree VARCHAR(20),
@Salary INT, @Department_ID INT)
AS
	IF EXISTS (SELECT Instructor_ID FROM Instructor WHERE Instructor_ID = @Instructor_ID)
		SELECT 'Existed Instructor ID!'
	ELSE IF NOT EXISTS (SELECT Department_ID FROM Instructor WHERE Department_ID = @Department_ID)
		SELECT 'Wrong Department ID!'
	ELSE
		INSERT INTO Instructor (Instructor_ID, Instructor_Name, Ins_Degree, Salary, Department_ID)
		VALUES (@Instructor_ID, @Instructor_Name, @Instructor_Degree, @Salary, @Department_ID)

Insert_New_Instructor 100, 'Dummy_Instructor', 'Master', 22000, 50	-- Done
Insert_New_Instructor 10, 'Dummy_Instructor', 'Master', 22000, 50	-- Existed Instructor ID!
Insert_New_Instructor 200, 'Dummy_Instructor', 'Master', 22000, 1000	-- Wrong Department ID!

							---------------------------------------------------------------------

-- PROCEDURE
-- instructor Table (UPDATE)
-- Update instructor Degree By Department ID
CREATE OR ALTER PROCEDURE Update_instructor (@instructor_ID INT, @Instructor_Degree VARCHAR(20))
AS
	IF EXISTS (SELECT instructor_ID FROM instructor WHERE instructor_ID = @instructor_ID)
		UPDATE instructor
			SET Ins_Degree = @instructor_Degree
			WHERE instructor_ID = @instructor_ID
	ELSE	
		SELECT 'Enter Right instructor_ID'

Update_instructor 100, 'PhD'	-- Done
Update_instructor 1000, 'PhD'	-- Enter Right instructor_ID

							---------------------------------------------------------------------

-- PROCEDURE
-- instructor Table (DELETE)
-- Delete instructor Record By instructor ID
CREATE OR ALTER PROCEDURE Delete_instructor (@instructor_ID INT)
AS
	IF EXISTS (SELECT instructor_ID FROM instructor WHERE instructor_ID = @instructor_ID)
		DELETE FROM instructor
		WHERE instructor_ID = @instructor_ID
	ELSE	
		SELECT 'Enter Right instructor_ID'

Delete_instructor 100	-- Done
Delete_instructor 1000	-- Enter Right instructor_ID

							---------------------------------------------------------------------

-- Evaluation Table --
-- PROCEDURE
-- Evaluation Table (SELECT)
-- Get Evaluation Information By Instructor_ID
CREATE OR ALTER PROCEDURE Get_Evaluation_Data (@Instructor_ID INT)
AS
	SELECT Student_ID, Explanation, Labs
	FROM Evaluation
	WHERE Instructor_ID = @Instructor_ID

Get_Evaluation_Data 1	-- Done

							---------------------------------------------------------------------

-- PROCEDURE
-- Evaluation Table (INSERT)
-- Insert New Evaluation all Columns
CREATE OR ALTER PROCEDURE Insert_New_Evaluation (@Instructor_ID INT, @Student_ID INT, @Explanation INT, @Labs INT)
AS
		IF NOT EXISTS (SELECT Instructor_ID FROM Evaluation WHERE Instructor_ID  = @Instructor_ID)
			SELECT 'Wrong Instructor ID!'
		ELSE IF NOT EXISTS (SELECT Student_ID FROM Evaluation WHERE Student_ID  = @Student_ID)
			SELECT 'Wrong Student ID!'
		ELSE
			INSERT INTO Evaluation (Instructor_ID, Student_ID, Explanation, Labs)
			VALUES (@Instructor_ID, @Student_ID, @Explanation, @Labs)

Insert_New_Evaluation 20, 100, 8, 9	 -- Done
Insert_New_Evaluation 100, 10, 8, 9	 -- Wrong Instructor ID!
Insert_New_Evaluation 10, 1000, 8, 9	 -- Wrong Student ID!

							---------------------------------------------------------------------

-- PROCEDURE
-- Evaluation Table (UPDATE)
-- Update Evaluation Explanation, Labs By Instructor ID, Student ID
CREATE OR ALTER PROCEDURE Update_Evaluation (@Instructor_ID INT, @Student_ID INT, @Explanation INT, @Labs INT)
AS
	IF EXISTS (SELECT instructor_ID, Student_ID FROM Evaluation WHERE instructor_ID = @instructor_ID AND Student_ID = @Student_ID)
		UPDATE Evaluation
			SET Explanation = @Explanation,
				Labs = @Labs
			WHERE instructor_ID = @instructor_ID AND Student_ID = @Student_ID
	ELSE	
		SELECT 'Enter Right instructor_ID or Student_ID'

Update_Evaluation 20, 351, 8, 8	 -- Done
Update_Evaluation 100, 50, 8, 8	 -- Enter Right instructor_ID or Student_ID
Update_Evaluation 20, 3000, 8, 8	 -- Enter Right instructor_ID or Student_ID

							---------------------------------------------------------------------

-- PROCEDURE
-- Evaluation Table (DELETE)
-- Delete Evaluation Record By instructor ID & Student ID
CREATE OR ALTER PROCEDURE Delete_Evaluation (@instructor_ID INT, @Student_ID INT)
AS
	IF EXISTS (SELECT instructor_ID, Student_ID FROM Evaluation WHERE instructor_ID = @instructor_ID AND Student_ID = @Student_ID)
		DELETE FROM Evaluation
		WHERE instructor_ID = @instructor_ID AND Student_ID = @Student_ID
	ELSE	
		SELECT 'Enter Right instructor_ID & Student ID'

Delete_Evaluation 20, 213	-- Done
Delete_Evaluation 20, 700	-- Enter Right instructor_ID & Student ID

							---------------------------------------------------------------------