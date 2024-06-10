Create or Alter Procedure joinstudent
	@StudentId int

	As

	Begin 
	
Select Students.firstname, Students.lastname, Assignments.Name,Assignments.score from students

	LEFT join ASSIGNMENTS
	on 
	Assignments.studentid= students.id
Where students.id=@studentid	
	
	End
	go
Exec joinstudent 17

go
