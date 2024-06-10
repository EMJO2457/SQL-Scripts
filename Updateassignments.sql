Create or Alter procedure updateassignments
		@examid int,
		@examname varchar(50),
		@examscore int
AS
Begin
if not exists(
Select *from assignments
	Where assignments.id=@examid
	)
	Begin
		Print'Exam not found'
		return;
	End

If @examscore<0 or @examscore>100
	Begin

	Print 'Exam score invalid'
	Return;
	End

Update assignments 
	set score =@examscore,
	name= @examname
	Where id=@examid;
	
End
go

Select*from assignments
where assignments.id=2310
Go

Exec updateassignments @examid=2311, @examscore=85, @examname='newname'
go
/*
Update assignments 
	set score =2,
	name= 'test'
	Where id=2310;
	*/

Select*from assignments
	Where ASSIGNMENTS.id= 2310;

