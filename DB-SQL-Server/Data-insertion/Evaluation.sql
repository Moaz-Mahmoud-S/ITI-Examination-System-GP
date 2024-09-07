-- Insert random data into the evaluation table
DECLARE @Instructor_id INT, @Student_id INT, @Explaination INT, @Labs INT;
DECLARE @i INT, @j INT;

SET @i = 1;
WHILE @i <= 100 -- Loop through each Instructor ID
BEGIN
	
    
    SET @Explaination = FLOOR(RAND(CHECKSUM(NEWID())) * 10) + 1;
    SET @Labs = FLOOR(RAND(CHECKSUM(NEWID())) * 10) + 1;
	SET @Instructor_id =  ABS(CHECKSUM(NewId())) % 30 + 1 ;
	SET @Student_id =  ABS(CHECKSUM(NewId())) % 980 + 1;
	INSERT INTO [dbo].[Evaluation] (Instructor_id, Student_id,[Explanation], Labs)
    VALUES (@Instructor_id, @Student_id, @Explaination, @Labs);

    SET @i = @i + 1;
END;

ALTER TABLE Evaluation
ADD CONSTRAINT CHECK_Evaluation_Value CHECK (Explanation BETWEEN 0 AND 10)

ALTER TABLE Evaluation
ADD CONSTRAINT CHECK_Labs_Value CHECK (Labs BETWEEN 0 AND 10)

select * from [dbo].[Evaluation]