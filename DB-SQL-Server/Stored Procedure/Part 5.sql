
/****************************************************** TRACK TABLE ******************************************************/

--SELECT
CREATE OR ALTER PROCEDURE Get_Track (@Track_id int)
as
  IF NOT EXISTS (SELECT * FROM [dbo].[Track] WHERE [Track_ID] = @Track_id )
  SELECT 'No Track for this ID'
  
  ELSE
  SELECT * FROM [dbo].[Track] WHERE  [Track_ID] = @Track_id 

EXEC Get_Track 1


--INSERT
CREATE OR ALTER PROCEDURE Insert_Track (@Track_id int,@Track_Name varchar(50))
as
  IF  EXISTS (SELECT * FROM [dbo].[Track] WHERE [Track_ID] = @Track_id or [Track_Name]=@Track_Name)
  SELECT 'cant insert dublicate track'
 
  ELSE
  INSERT INTO [dbo].[Track] ([Track_ID],[Track_Name]) VALUES (@Track_id,@Track_Name)

EXEC Insert_Track 50,'IOT'
EXEC Insert_Track 51,'Power BI Developer'

--DELETE
CREATE OR ALTER PROCEDURE Delete_Track (@Track_id int)
as
  IF  NOT EXISTS (SELECT * FROM [dbo].[Track] WHERE [Track_ID] = @Track_id )
  SELECT 'No Track with this id'
 
  ELSE
  Delete from [dbo].[Track] where[Track_ID]=@Track_id

EXEC Delete_Track 50

--UPDATE
CREATE OR ALTER PROCEDURE Update_Track (@Track_id int,@Track_New_Name varchar(50))
as
  IF  NOT EXISTS (SELECT * FROM [dbo].[Track] WHERE [Track_ID] = @Track_id )
  SELECT 'No Track with this id'
 
  ELSE
  begin
	  IF   EXISTS (SELECT * FROM [dbo].[Track] WHERE [Track_Name]  = @Track_New_Name )
	  SELECT 'Cant insert dublicate track'

	  ELSE
	  UPDATE [dbo].[Track]
	  SET [Track_Name] = @Track_New_Name
	  WHERE [Track_ID]=@Track_id
  end

EXEC Update_Track 20,'Power BI Developer'





/****************************************************** BRANCH TABLE ******************************************************/

--SELECT
CREATE OR ALTER PROCEDURE Get_Branch (@Branch_id int)
as
  IF NOT EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_ID] = @Branch_id )
  SELECT 'No Branch for this ID'
  
  ELSE
  SELECT * FROM [dbo].[Branch] WHERE  [Branch_ID] = @Branch_id 

EXEC Get_Branch 1


--INSERT
CREATE OR ALTER PROCEDURE Insert_Branch (@Branch_id int,@Branch_Name varchar(20),@Branch_Gov varchar(20))
as
  IF  EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_ID]= @Branch_id or [Branch_Name]=@Branch_Name)
  SELECT 'cant insert dublicate branches'
 
  ELSE
  INSERT INTO [dbo].[Branch] ([Branch_ID],[Branch_Name],[Branch_Gov]) VALUES (@Branch_id,@Branch_Name,@Branch_Gov)

EXEC Insert_Branch  50,'ITI PORT SAID','PORT SAID'

EXEC Insert_Branch 51,'ITI PORT SAID','PORT SAID'

--DELETE
CREATE OR ALTER PROCEDURE Delete_Branch (@Branch_id int)
as
  IF  NOT EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_ID] = @Branch_id )
  SELECT 'No Branch with this id'
 
  ELSE
  Delete from [dbo].[Branch] where[Branch_ID]=@Branch_id

EXEC Delete_Branch 50

--UPDATE
CREATE OR ALTER PROCEDURE Update_Branch_Name (@Branch_id int,@Branch_New_Name varchar(20))
as
  IF  NOT EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_ID] = @Branch_id )
  SELECT 'No Track with this id'
 
  ELSE
  begin
	  IF   EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_Name]  = @Branch_New_Name )
	  SELECT 'Cant insert dublicate Branches'

	  ELSE
	  UPDATE [dbo].[Branch]
	  SET [Branch_Name] = @Branch_New_Name
	  WHERE [Branch_ID]=@Branch_id
  end

EXEC Update_Branch_Name 50,'ITIDA PORT SAID'
EXEC Get_Branch 50

CREATE OR ALTER PROCEDURE Update_Branch_Gov(@Branch_id int,@Branch_New_gov varchar(20))
as
  IF  NOT EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_ID] = @Branch_id )
  SELECT 'No Track with this id'
 
  ELSE
  begin
	  UPDATE [dbo].[Branch]
	  SET [Branch_Gov] = @Branch_New_gov
	  WHERE [Branch_ID]=@Branch_id
  end

EXEC Update_Branch_Gov 50,'ITIDA SINAI'
EXEC Get_Branch 50



/****************************************************** TRACK-BRANCH TABLE ******************************************************/

--SELECT
CREATE OR ALTER PROCEDURE Get_Tracks_by_Branch (@Branch_id int)
as
  IF NOT EXISTS (SELECT * FROM [dbo].[Track_Branch] WHERE [Branch_ID] = @Branch_id )
  SELECT 'No Branch for this ID'
  
  ELSE
  SELECT t.Track_Name
  FROM [dbo].[Track_Branch] as tb inner join [dbo].[Track] as t
  on tb.Track_ID = t.Track_ID and  tb.[Branch_ID] = @Branch_id 

EXEC Get_Tracks_by_Branch 1


CREATE OR ALTER PROCEDURE Get_Branches_by_Track (@Track_id int)
as
  IF NOT EXISTS (SELECT * FROM [dbo].[Track_Branch] WHERE [Track_ID] = @Track_id )
  SELECT 'No Tracks for this ID'
  
  ELSE
  SELECT b.Branch_Name , b.[Branch_Gov]
  FROM [dbo].[Track_Branch] as tb inner join [dbo].[Branch] as b
  on tb.Branch_ID = b.Branch_ID and  tb.Track_ID = @Track_id 

EXEC Get_Branches_by_Track 1

--INSERT

CREATE OR ALTER PROCEDURE Insert_Branch_Track (@Branch_id int,@Track_id int)
as
  IF  EXISTS (SELECT * FROM [dbo].[Track_Branch] WHERE [Branch_ID]= @Branch_id and [Track_ID]=@Track_id)
  SELECT 'cant insert dublicates'
 
  ELSE
  begin try
  INSERT INTO [dbo].[Track_Branch] ([Branch_ID],[Track_ID]) VALUES (@Branch_id,@Track_id)
  end try
  begin catch
  select 'an error occurred'
  end catch

EXEC Insert_Branch_Track  50,50


--DELETE
CREATE OR ALTER PROCEDURE Delete_Track_for_Branch (@Branch_id int)
as
  IF  NOT EXISTS (SELECT * FROM [dbo].[Track_Branch] WHERE [Branch_ID]= @Branch_id )
  SELECT 'NO branch with this id'
 
  ELSE
  Delete from [dbo].[Track_Branch] where[Branch_ID]=@Branch_id

EXEC Delete_Track_for_Branch 50

--UPDATE

CREATE OR ALTER PROCEDURE Update_Track_for_Branch (@Branch_id int,@Track_id int)
as

  begin try
	  IF  Not EXISTS (SELECT * FROM [dbo].[Branch] WHERE [Branch_ID]  = @Branch_id )
	  SELECT 'No branch exist with this id'

	  else if Not EXISTS (SELECT * FROM [dbo].[Track] WHERE [Track_ID]  = @Track_id )
	  SELECT 'No tracks exist with this id'

	  ELSE
	  UPDATE [dbo].[Track_Branch]
	  SET [Track_ID]  = @Track_id
	  WHERE [Branch_ID]=@Branch_id
  end try
  begin catch
  select 'an error occured'
  end catch

EXEC Update_Track_for_Branch 1,50

