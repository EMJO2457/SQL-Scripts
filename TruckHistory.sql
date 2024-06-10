/*Select * from ASSIGNMENTS
		join students
		on Assignments.studentid=students.id

		Delete from  ASSIGNMENTS

		Insert into Assignments (name,score,Studentid)
			Values 
			('git/github', 90, 1),
			('git/github', 90, 2),
			('git/github', 90, 3),
			('git/github', 90, 4),
			('git/github', 90, 5),
			('git/github', 90, 6),
			('git/github', 90, 7),
			('git/github', 90, 8),
			('git/github', 90, 9),
			('git/github', 90, 10),
			('git/github', 90, 11),
			('git/github', 90, 12)

			Update ASSIGNMENTS Set score=5 where StudentID= 1
			Update ASSIGNMENTS Set score=10 where StudentID= 2

			Update Students Set DateofBirth = 2001-06-15 where ID=1

			*/
			--Drop table TruckHistory
		/*
Create table TruckHistory (
	ID int not null primary key identity(1,1),
	PickState varchar(30) not null,
	DropState varchar(30) not null,
	Miles int not null, 
	Rate int not null,
	LaneID int null
	);

	
	Alter table TruckHistory 
	Add Constraint laneID
	Foreign key (laneID) references Truckers(id);
	*/
	/*
	Insert into TruckHistory(Pickstate,DropState, Miles,Rate,laneID)
			Values('OHIO','California', 1000, 2500,1),
					('Texas', 'Califonia', 1000, 2500,1),
					('Florida','Georgia', 1000, 2500,1),
					('OHIO','California', 1000, 2500,2),
					('Texas', 'Califonia', 1000, 2500,2),
					('Florida','Georgia', 1000, 2500,2),
					('OHIO','California', 1000, 2500,3),
					('Texas', 'Califonia', 1000, 2500,3),
					('Florida','Georgia', 1000, 2500,3)
		*/


		
		Select * from TruckHistory
			
			