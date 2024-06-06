select Orders.description 'Order', Date, Orderlines.Product,Orderlines.Description, OrderLines.Quantity, Orderlines.Price From Orders
	Join OrderLines 
	--Join Customers
		on OrderLines.OrdersId = Orders.ID
	--On Orders.CustomerId =Customers.ID
	Order by product, Description

