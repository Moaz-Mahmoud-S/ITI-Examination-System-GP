

 
/****************************************************    Course Table ****************************************************/
CREATE OR ALTER PROCEDURE Select_Course (@crs_id int)
as
	if not exists (Select * from [dbo].[Course] where [Course_ID] = @crs_id)
	SELECT 'No Course For This ID'
	else 
	SELECT [Course_Name],[Course_Description] from [dbo].[Course] where [Course_ID] = @crs_id

/************* TESTING *************/
	EXEC Select_Course 2
	EXEC Select_Course 1000

-----------------------------------------------------------

CREATE OR ALTER PROCEDURE Insert_Course (@crs_id int , @crs_name varchar(50) , @crs_description varchar(100) , @topic_id int)
as
	if  exists (Select * from [dbo].[Course] where [Course_ID] = @crs_id)
		SELECT 'This Course With this ID Already Exists'
	else 
	begin try
		INSERT INTO [dbo].[Course] ([Course_ID],[Course_Name],[Course_Description],[Topic_ID]) VALUES
		(@crs_id,@crs_name,@crs_description,@topic_id)
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Insert_Course 26,'HTML','Introduction to HTML Web Pages',1
	EXEC Insert_Course 26,'CSS','Introduction to HTML CSS',1

-----------------------------------------------------------

CREATE OR ALTER PROCEDURE Delete_Course (@crs_id int)
as
	if not exists (Select * from [dbo].[Course] where [Course_ID] = @crs_id)
		SELECT 'No Course Found with this id'
	else 
	begin try
		DELETE FROM [dbo].[Course] WHERE [Course_ID]=@crs_id
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Delete_Course 26


CREATE OR ALTER PROCEDURE Update_Course (@crs_id int , @crs_name varchar(50))
as
	if not exists (Select * from [dbo].[Course] where [Course_ID] = @crs_id)
		SELECT 'No Course Found with this id'
	else 
	begin try
		Update [dbo].[Course]
		set [Course_Name]=@crs_name
		where [Course_ID]=@crs_id
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Insert_Course 26,'HTML','Introduction to HTML Web Pages',1
	EXEC Update_Course 26,'HTML5'
	EXEC Delete_Course 26

/****************************************************    Question Table ****************************************************/

CREATE OR ALTER PROCEDURE Select_Questions (@crs_id int)
as
	if not exists (Select * from [dbo].[Question] where [Course_ID] = @crs_id)
		SELECT 'No Questions For This Course'
	else 
	Select * from [dbo].[Question] where [Course_ID] = @crs_id

/************* TESTING *************/
	EXEC Select_Questions 1000
	EXEC Select_Questions 25


-----------------------------------------------------------

CREATE OR ALTER PROCEDURE Insert_Question (@crs_id int , @ques_id int , @Question varchar(120) , @type bit)
as
	if  exists (Select * from [dbo].[Question] where  [Question_ID] = @ques_id)
		SELECT 'This Question With this ID Already Exists'
	else 
	begin try
		INSERT INTO [dbo].[Question] ([Question_ID],[Question],[Type],[Course_ID]) VALUES
		(@ques_id,@Question,@type,@crs_id)
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Insert_Question 15,504,'Introduction to HTML Web Pages',0
	EXEC Insert_Question 40,504,'Introduction to HTML Web Pages',0


-----------------------------------------------------------

CREATE OR ALTER PROCEDURE Delete_Question (@crs_id int , @ques_id int )
as
	if  not exists (Select * from [dbo].[Question] where  [Question_ID] = @ques_id and [Course_ID] = @crs_id)
		SELECT 'This Question Not Exists'
	else 
	begin try
		Delete 
		from [dbo].[Question]
		where [Question_ID] = @ques_id and [Course_ID]=@crs_id
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Delete_Question 15,504
	EXEC Delete_Question 40,504

-----------------------------------------------------------
CREATE OR ALTER PROCEDURE Update_Question (@crs_id int , @ques_id int ,@question varchar(120))
as
	if  not exists (Select * from [dbo].[Question] where  [Question_ID] = @ques_id and [Course_ID] = @crs_id)
		SELECT 'This Question Not Exists'
	else 
	begin try
		Update  [dbo].[Question]
		set [Question] = @question
		where [Question_ID] = @ques_id and [Course_ID]=@crs_id
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Insert_Question 15,504,'Introduction to HTML Web Pages',0
	EXEC Update_Question 15,504,'HTML Web Pages'
	EXEC Select_Questions 15
	EXEC Delete_Question 15,504



/****************************************************    Choices Table ****************************************************/

CREATE OR ALTER PROCEDURE Select_Choices (@ques_id int)
as
	if not exists (Select * from [dbo].[Choices] where  [Question_ID] = @ques_id)
		SELECT 'No Questions Exsists'
	else 
	Select * from [dbo].[Choices] where [Question_ID] = @ques_id

/************* TESTING *************/
	EXEC Select_Choices 300
	EXEC Select_Choices 600


-----------------------------------------------------------

CREATE OR ALTER PROCEDURE Insert_Choice (@ques_id int , @Choice varchar(100) , @Right_choice bit)
as
	begin try
		INSERT INTO [dbo].[Choices]([Question_ID],[Choice],[Right_Choice]) VALUES
		(@ques_id,@Choice,@Right_choice)
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Insert_Choice 15,'HTML Web Pages',0
	EXEC Insert_Choice 600,'HTML Web Pages',0


-----------------------------------------------------------

CREATE OR ALTER PROCEDURE Delete_Choice (@choice_id int , @ques_id int )
as
	if  not exists (Select * from [dbo].[Choices] where  [Question_ID] = @ques_id and [Choice_ID] = @choice_id)
		SELECT 'This Question Not Exists'
	else 
	begin try
		Delete 
		from [dbo].[Choices]
		where [Question_ID] = @ques_id and [Choice_ID]=@choice_id
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Select_Choices 15
	EXEC Delete_Choice 1301,15
	EXEC Delete_Question 600,504

-----------------------------------------------------------
CREATE OR ALTER PROCEDURE Update_Choice (@choice_id int , @ques_id int ,@choice varchar(100))
as
	if  not exists (Select * from [dbo].[Choices] where  [Question_ID] = @ques_id and [Choice_ID] = @choice_id)
		SELECT 'This Question Not Exists'
	else 
	begin try
		Update [dbo].[Choices] 
		set  [Choice]= @choice
		where [Question_ID] = @ques_id and [Choice_ID]=@choice_id
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Select_Choices 1
	EXEC Update_Choice 1052,1,'C Plus Plus'




/****************************************************    Student-Solution Table ****************************************************/

CREATE OR ALTER PROCEDURE Select_Student_Solution (@exam_id int,@stud_id int)
as
	if not exists (Select * from [dbo].[Student_Solution] where  [Student_ID] = @stud_id and [Exam_ID] =@exam_id)
		SELECT 'No Exams Exsists'
	else 
	Select * from [dbo].[Student_Solution] where [Student_ID] = @stud_id and [Exam_ID] = @exam_id

/************* TESTING *************/
	EXEC Select_Student_Solution 1,1



-----------------------------------------------------------

CREATE OR ALTER PROCEDURE Insert_Student_Solution (@exam_id int,@stud_id int,@quest_id int ,@st_answer varchar(100))
as
	begin try
		INSERT INTO [dbo].[Student_Solution]([Student_ID],[Exam_ID],[Question_ID],[Student_Answer]) VALUES
		(@stud_id,@exam_id,@quest_id,@st_answer)
	end try
	begin catch
		SELECT 'An Error Occured'
	end catch

/************* TESTING *************/
	EXEC Insert_Student_Solution  1,1,1,1



-----------------------------------------------------------

CREATE  Trigger Delete_Student_Solution 
on [dbo].[Student_Solution]
instead of delete
as
	begin
	Select 'Answers cant be deleted'
	end

/************* TESTING *************/
	Delete from [dbo].[Student_Solution]

-----------------------------------------------------------
CREATE  Trigger Update_Student_Solution 
on [dbo].[Student_Solution]
instead of update
as
	begin
	Select 'Answers cant be updated'
	end

/************* TESTING *************/
	update [dbo].[Student_Solution] 
	set [Student_Answer] =1
	where [Student_ID] =1
