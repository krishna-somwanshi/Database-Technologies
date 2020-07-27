Assignment – 11
Subqueries.
1) Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number (cnum).
Ans:- select * from orders where cnum = (select cnum from customers where cname = 'Cisneros');
2) Write a query that produces the names and ratings of all customers who have above-average orders.
Ans:-Select c.cname, c.rating from orders o,customers c
	 where o.cnum = c.cnum group by o.cnum
	 having count(c.cnum)>(SELECT (count(cnum)-count(distinct(cnum)))/2 from orders);
3) Write a query that selects the total amount in orders for each salesperson for whom this total is greater than the amount of the largest order in the table.
Ans:- select sum(amt) from orders
	  group by snum having sum(amt) > (select max(amt) from orders);
