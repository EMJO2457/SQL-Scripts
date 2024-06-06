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

	Select *
		from customers
			where Sales>= (Select avg(sales) from customers where City like '%Cinci%')
			and 
			Sales >=(Select avg(sales) from Customers Where City ='Cleveland')
			Order by City desc, Sales desc

				
				
	
	