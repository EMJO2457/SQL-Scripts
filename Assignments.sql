CREATE TABLE ASSIGNMENTS(
	ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
			name varchar(50) not null, 
			score decimal not null,
			StudentID int not null foreign key references students(ID)
		
	
	)

	insert ASSIGNMENTS (name, score, studentid)
		values ('github test', 85.28, 1)
		go

		--Select * from assignments
		--go
	Select *from students
		join assignments 
		on students.id=assignments.StudentID