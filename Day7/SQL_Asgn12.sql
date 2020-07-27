Assignment – 12
1) Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres’.
Ans:- select cname, rating from customers 
	  where rating >= 
	  (select max(rating) from customers, salespeople 
	  where customers.snum = salespeople.snum and sname = 'serres');
	  
2) Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.
Ans:-select sname, salespeople.city, cname, customers.city as cus_city 
	 from salespeople, customers 
	 where salespeople.snum = customers.snum and salespeople.city != customers.city;
	 
3) Write a query that selects all orders for amounts greater than any for the customers in London.
Ans:- select * from orders 
	  where snum = any 
	  (select snum from customers where city='London');

4) Write the above query using MIN or MAX.
Ans:- select * from orders 
	where snum = any 
	(select snum from customers where city='London')
	order by amt desc limit 1;

	select * from orders 
	where snum = any 
	(select snum from customers where city='London')
	order by amt asc limit 1;