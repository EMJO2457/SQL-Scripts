--Select city, count(id) 'count'
--from Customers
--Group by city
--Having count(*) >=12 
/*
Select city, sum(sales) 'sales'
	from customers
	group by city
	having sum(Sales)>600000

Select name, sum(sales) 'sales'
	from customers
	group by name
*/
--DECLARE @TOM nvarchar

--PRINT 'THEY NOT LIKE US'



--Begin and rollback transaction 
/*
Select * from Customers
	where id=15;

Begin transaction;

Delete from customers where id =15;

Select * from customers where id =15;

Rollback transaction;

Select * from customers where id=15;
*/
/*
Declare @saleslow int

Declare @saleshigh int=

Declare @transactions int =0


While  @Saleslow<@Saleshigh

begin


Set sales= sales+100 , City = 'cleveland'
	Where id= 15
Select * from customers where id = 15

End


Set sales= sales+100 , City = 'cleveland'
	Where id= 15
Select * from customers where id = 15


 --update customers Set sales = sales +10000, city ='columbus' 

	--where id =22

	*/
	--Insert into Customers(name, city, state, sales, active)
		--Values('TQL', 'CINCINNATI', 'OH' , 100000, 0);

	/*	select *from customers
		
	Insert into Orders (CustomerID, date, Description)
	Values ((select id from customers where name= 'tql'), '2024-06-07', 'test1')
		select * from orders 
		order by CustomerId

		*/

		Update Orders set Description= 'order number 45' where id = 28
			select * from orders

		update orders 