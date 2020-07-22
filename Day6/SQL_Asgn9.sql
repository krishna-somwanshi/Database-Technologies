Assignment – 9
Querying Multiple Tables at Once.
1) Write a query that lists each order number followed by the name of the customer who made the order.
Ans:- select onum, cname from orders, customers where orders.cnum=customers.cnum;

2) Write a query that gives the names of both the salesperson and the customer for each order along with the order number.
Ans:- select sname, cname, onum from salespeople, orders, customers 
	  where salespeople.snum=orders.snum and orders.snum=customers.snum;

3) Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission.
Ans:- select cname, sname, comm from salespeople,customers where comm > 0.12;

4) Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.
Ans:- select sname, cname, amt*comm from orders, customers, salespeople 
      where rating > 100 and orders.cnum=customers.cnum and orders.snum=salespeople.snum;