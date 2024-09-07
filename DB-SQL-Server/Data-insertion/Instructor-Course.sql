
DECLARE Ins_Crs CURSOR  
FOR
	Select [Department_ID],[Instructor_ID] from [dbo].[Instructor]


OPEN  Ins_Crs

DECLARE @DEP_ID INT , @INS_ID INT

FETCH NEXT FROM Ins_Crs INTO @DEP_ID,@INS_ID

WHILE @@FETCH_STATUS =0
begin

	IF (@DEP_ID=10)
	BEGIN
		INSERT INTO [dbo].[Instructor_Course] ([Course_ID],[Instructor_ID]) VALUES
		(6,@INS_ID),
		(7,@INS_ID),
		(8,@INS_ID),
		(9,@INS_ID),
		(10,@INS_ID);
	END

	ELSE IF (@DEP_ID=20)
	BEGIN
		INSERT INTO [dbo].[Instructor_Course] ([Course_ID],[Instructor_ID]) VALUES
		(1,@INS_ID),
		(2,@INS_ID),
		(3,@INS_ID),
		(4,@INS_ID),
		(5,@INS_ID);
	END
	
	ELSE IF (@DEP_ID=30)
	BEGIN
		INSERT INTO [dbo].[Instructor_Course] ([Course_ID],[Instructor_ID]) VALUES
		(11,@INS_ID),
		(12,@INS_ID),
		(13,@INS_ID),
		(14,@INS_ID),
		(15,@INS_ID);
	END
		
	ELSE IF (@DEP_ID=40)
	BEGIN
		INSERT INTO [dbo].[Instructor_Course] ([Course_ID],[Instructor_ID]) VALUES
		(16,@INS_ID),
		(17,@INS_ID),
		(18,@INS_ID),
		(19,@INS_ID),
		(20,@INS_ID);
	END

	ELSE
	BEGIN
		INSERT INTO [dbo].[Instructor_Course] ([Course_ID],[Instructor_ID]) VALUES
		(21,@INS_ID),
		(22,@INS_ID),
		(23,@INS_ID),
		(24,@INS_ID),
		(25,@INS_ID);
	END

	FETCH NEXT FROM Ins_Crs INTO 
            @DEP_ID, 
            @INS_ID;
end

CLOSE Ins_Crs

DEALLOCATE Ins_Crs

SELECT * FROM [dbo].[Instructor_Course]