

CREATE OR ALTER PROCEDURE GET_INS_COURSE (@INS_ID INT)
AS
	IF NOT EXISTS (SELECT * FROM [dbo].[Instructor_Course] WHERE [Instructor_ID] =@INS_ID )
		SELECT 'NO Instructor Found'

	ELSE
		SELECT C.Course_Name
		FROM [dbo].[Instructor_Course] AS IC INNER JOIN [dbo].[Course] AS C 
		ON IC.Course_ID = C.Course_ID AND IC.Instructor_ID=@INS_ID

EXEC GET_INS_COURSE 20


CREATE OR ALTER PROCEDURE INSERT_INS_COURSE (@INS_ID INT,@CRS_ID INT)
AS
	IF  EXISTS (SELECT * FROM [dbo].[Instructor_Course] WHERE [Instructor_ID] =@INS_ID AND [Course_ID] =@CRS_ID)
		SELECT 'NO Duplicates allowed'

	ELSE
		BEGIN TRY
			INSERT INTO [dbo].[Instructor_Course] ([Course_ID],[Instructor_ID]) VALUES
			(@CRS_ID,@INS_ID)
		END TRY
		BEGIN CATCH
			SELECT 'An Error occured'
		END CATCH

EXEC INSERT_INS_COURSE 1,1

EXEC INSERT_INS_COURSE 50,1


CREATE OR ALTER PROCEDURE DELETE_INS_COURSE (@INS_ID INT)
AS
	IF NOT EXISTS (SELECT * FROM [dbo].[Instructor_Course] WHERE [Instructor_ID] =@INS_ID )
		SELECT 'NO Instuctor Found'
	ELSE
		BEGIN TRY
			Delete FROM [dbo].[Instructor_Course] WHERE [Instructor_ID]=@INS_ID
		END TRY
		BEGIN CATCH
			SELECT 'An Error occured'
		END CATCH

EXEC DELETE_INS_COURSE 50


CREATE OR ALTER PROCEDURE UPDATE_INS_COURSE (@INS_ID INT,@CRS_ID INT)
AS
	IF NOT EXISTS (SELECT * FROM [dbo].[Instructor_Course] WHERE [Instructor_ID] =@INS_ID AND [Course_ID]=@CRS_ID  )
		SELECT 'NO Instuctor Found'
	ELSE
		BEGIN TRY
			UPDATE [dbo].[Instructor_Course] 
			SET [Course_ID]=@CRS_ID
			WHERE [Instructor_ID]=@INS_ID
		END TRY
		BEGIN CATCH
			SELECT 'An Error occured'
		END CATCH

/************* TESTING *************/

EXEC UPDATE_INS_COURSE 50,50