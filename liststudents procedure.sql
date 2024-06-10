Create or ALter procedure ListStudents
AS
Begin


Select firstname,lastname from students
	Join assignments on Assignments.StudentID=Students.id
	Order by lastname desc;
End
Go

Exec ListStudents;
GO

