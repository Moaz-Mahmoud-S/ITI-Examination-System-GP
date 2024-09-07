


 

CREATE or ALTER PROCEDURE EXAM_GENERATION_TWO (@MCQ_NUM INT , @TF_NUM INT , @Course_ID INT )
AS
BEGIN
	begin try

	declare @ex_date_time datetime
	set @ex_date_time=getdate()
	exec [dbo].[Insert_New_Exam] @ex_date_time , @Course_ID

	CREATE TABLE #TempTable (question_id INT, Question varchar(120) , Choice varchar(100) );

	declare @x int = 1,  @question_id int ,@min int

	select @min=min([Question_ID]) 
	from [dbo].[Question] 
	where [Course_ID] = @Course_ID and [Type] =0


	set @question_id  = @min 

	while (@x <= @MCQ_NUM)
	begin
		  
		insert into #TempTable 
			select q.Question_ID,q.[Question] , c.[Choice]
			from [dbo].[Question] as q inner join [dbo].[Choices] as c
			on c.Question_ID = q.Question_ID and q.Question_ID=@question_id

		set @x+=1
		set @question_id+=1
	end

	select @min=min([Question_ID]) 
	from [dbo].[Question] 
	where [Course_ID] = @Course_ID and [Type] =1


	set @x=1
	set @question_id  = @min 

	while (@x <= @TF_NUM)
	begin	    
		insert into #TempTable 
			select q.Question_ID,q.[Question] , c.[Choice] 
			from [dbo].[Question] as q inner join [dbo].[Choices] as c
			on c.Question_ID = q.Question_ID and q.Question_ID=@question_id

		set @x+=1
		set @question_id+=1
	end


	select  * from #TempTable 
	end try

	begin catch
		select 'An Error Occured'
	end catch
END

EXEC EXAM_GENERATION_TWO 5,5,5



Create or ALTER PROCEDURE GET_LAST_EXAM_ID
AS
 SELECT IDENT_CURRENT('[dbo].[Exam]')+1



EXEC GET_LAST_EXAM_ID


CREATE OR ALTER PROCEDURE EXAM_CORRECTION @EXAM_ID INT
AS

	Declare Exam_cursor cursor
	for select [Question_ID],[Student_Answer]
	from [dbo].[Student_Solution]
	where[Exam_ID]=@EXAM_ID

	open Exam_cursor

	Declare @answer varchar(100), @rightanswer varchar(100);
	Declare @grade int =0 ,@questionid int;

	Fetch Next from Exam_cursor into @questionid,@answer

	while @@FETCH_STATUS = 0 
	begin

		select @rightanswer=[Choice]
		from [dbo].[Choices]
		where [Question_ID]=@questionid and [Right_Choice]=1

		if ( @answer like @rightanswer)
			set @grade +=1;

		FETCH NEXT FROM Exam_cursor INTO 
            @questionid,
			@answer;
	end

	update [dbo].[Exam]
	set [Exam_Grade] = @grade
	where[Exam_ID]=@EXAM_ID
	
	CLOSE Exam_cursor;
	Deallocate Exam_cursor;

exec EXAM_CORRECTION 2



CREATE OR ALTER PROCEDURE GET_STUDENT_COURSE @ST_ID INT
AS
	SELECT c.Course_Name
	FROM [dbo].[Enrollment] as e inner join [dbo].[Course] as c
	on e.Course_ID = c.Course_ID
	where e.[ST_ID]=@ST_ID

EXEC GET_STUDENT_COURSE 2