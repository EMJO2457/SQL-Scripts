/*
select Orders.description 'Order', Date, Orderlines.Product,Orderlines.Description, OrderLines.Quantity, Orderlines.Price From Orders
	Join OrderLines 

	on OrderLines.OrdersId = Orders.ID
	Join Customers
		
	On Orders.CustomerId =Customers.ID
	--Where Orders.Date between 1 and 100000000000

	Order by product, Description
	*/
	/*
	Select * 
	from Customers C
	Left Join Orders O
		On O.CustomerId =C.ID

	Left Join Orderlines OL
		ON OL.OrdersId =O.ID
		*/

		--Select * from orders
		--Select * from Orderlines
	--	Select * from Customers, Orders, OrderLines

	/*
	Select *, 'A' 'Class' 
	from Customers
	Where Sales >= 80000
	
	Union
	Select *, 'B' 'Class'
	from Customers
	Where Sales < 80000 and sales>=20000
	
	Union
	Select *, 'C' 'Class'
	from Customers
	Where sales<20000
	*/
	/*

	--List the all data in table Customers tied to customers who had sales higher than the local averages for cinci and Cleveland
	Select *
		from customers
			where Sales>= (Select avg(sales) from customers where City like '%Cinci%')
			and 
			Sales >=(Select avg(sales) from Customers Where City ='Cleveland')
			Order by City desc, Sales desc
*/
/*
DECLARE @Sales int =90000;
DECLARE @Set int =90000;
DECLARE @LOWSALES int =20000
Declare @no varchar(25)

Set @set=0



	Select *
		from Customers
		where Sales between @LOWSALES and @SALES
		Order by Sales;
*/
/*
--Creates a value Counter, Runs a while loop that spits out the value of counter as a string.
--Then adds 1 to the count, while count is less than 100.
DECLARE @COUNTER INT=0;

WHILE @COUNTER <=100

Begin

	PRINT 'Iterarion ' + str(@counter)
	Set @COUNTER = @Counter +1
End
*/

Select City, 
--count(*) Count, format(sum(Sales),'c') 
Sales
from Customers
Group by City

				
	
	