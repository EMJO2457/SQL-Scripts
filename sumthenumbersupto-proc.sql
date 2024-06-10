Create or alter procedure Sumthenumbersupto

	@Targetnumber int = 0

AS
Begin

	Declare @counter int =0;
	Declare @sum int=0;

	While @counter<=@targetnumber
	Begin
	Set @sum= @counter+@sum;
	Set @counter=@counter+1;
	End
	Return @sum;
End
go
