
Create or Alter procedure deleteassignment
@examid int
As 
Begin 
Delete from assignments
	Where id =@examid
	End