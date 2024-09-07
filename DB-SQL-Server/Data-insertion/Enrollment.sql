



delete from [dbo].[Enrollment]
DECLARE 
    @stud_id int , 
    @track_id   int;

DECLARE Cursor_Stud CURSOR
    FOR Select [ST_ID],[Track_ID] from [dbo].[Student];

open Cursor_Stud

fetch next from Cursor_Stud into @stud_id,@track_id

while @@FETCH_STATUS = 0
begin
	if @track_id =1 or  @track_id =6 or  @track_id =7 or  @track_id =12 or  @track_id =18
	begin
		insert into [dbo].[Enrollment] ([ST_ID],[Course_ID],[Grade]) values
		(@stud_id,6,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,7,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,8,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,9,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,10,FLOOR(RAND() * (100 - 20 + 1)) + 20);
	end
	else if @track_id =2 or  @track_id =3 or  @track_id =4 or  @track_id =5 or  @track_id =17 or  @track_id =16
	begin
		insert into [dbo].[Enrollment] ([ST_ID],[Course_ID],[Grade]) values
		(@stud_id,1,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,2,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,3,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,4,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,5,FLOOR(RAND() * (100 - 20 + 1)) + 20);
	end

	else if @track_id =8 or  @track_id =9 or  @track_id =10 or  @track_id =15 
	begin
		insert into [dbo].[Enrollment] ([ST_ID],[Course_ID],[Grade]) values
		(@stud_id,21,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,22,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,23,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,24,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,25,FLOOR(RAND() * (100 - 20 + 1)) + 20);
	end

	else if @track_id =13 or  @track_id =20
	begin
		insert into [dbo].[Enrollment] ([ST_ID],[Course_ID],[Grade]) values
		(@stud_id,16,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,17,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,18,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,19,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,20,FLOOR(RAND() * (100 - 20 + 1)) + 20);
	end

	else
		begin
		insert into [dbo].[Enrollment] ([ST_ID],[Course_ID],[Grade]) values
		(@stud_id,11,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,12,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,13,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,14,FLOOR(RAND() * (100 - 20 + 1)) + 20),
		(@stud_id,15,FLOOR(RAND() * (100 - 20 + 1)) + 20);
	end

	FETCH NEXT FROM Cursor_Stud INTO 
            @stud_id, 
            @track_id;
end


CLOSE Cursor_Stud;

deallocate Cursor_Stud

select *
from [dbo].[Enrollment]



