--Creates Add Exam
Create or alter Procedure Addexam
	@studentID int=null,
	@examname nvarchar(100)=null,
	@score int=null
AS
Begin
--Check for valid StudentID
	If not exists(
	Select*from students
		Where id=@studentID
		)
			Begin
				Print'Student is not found!';
				return;
			End
--Check the name length
if @examname is null 
	Begin
	Print 'Name is null';
	return;
	End
	--check the name max lenght 50
	if len(@examname)>50
		Begin
			Print 'Name has a limit of 50 characters';
			Return;
		End
	If 
		@score<0 or @score>110
		Begin
		Print 'Score invalid'
		Return;
		End

	Insert into ASSIGNMENTS (Name, score, StudentID)
	Values(@examname, @score, @studentID)
End
Go

Exec Addexam @studentID=12, @score=-80, @examname='Exam name'
Select* from assignments
-- End of Add Exam


--Execturing add exam
--Exec addexam @examname='Practicetest', @score=80, @Studentid=17



	
--Go
--Declaring Variables for Test updater
/*
Declare @examnumber int =1;
Declare @count int=1;
Declare @studentID int;
Declare @NewScore int =(SELECT RAND()*(99)+1);
Declare @testname nvarchar(50);
Set @testname=concat('Practicetest ' ,str(@Examnumber))


Set @StudentID =(Select max(id) from students)

While @count<= @studentID
	Exec addexam @examname=@testname, @score=@NewScore, @Studentid=count
	if @count>100
	Break
go

Select* from Students 
	join assignments
	on Students.id=assignments.studentid
	go

Select*from assignments

*/

