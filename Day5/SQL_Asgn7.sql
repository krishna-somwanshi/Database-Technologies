Assignment –7
Summarizing Data with Aggregate Functions.
1) Write a query that counts all orders for October 3.
Ans:- select count(*) from orders where odate = '1990-10-03';
2) Write a query that counts the number of different non-NULL city values in the Customers table.
Ans:- select count(city) from customers where city is not null;
3) Write a query that selects each customer’s smallest order.
Ans:- select min(amt),cnum from orders group by cnum;
4) Write a query that selects the first customer, in alphabetical order, whose name begins with G.
Ans:- select cname from customers where cname like 'G%' order by cname limit 1;
5) Write a query that selects the highest rating in each city.
Ans:- select City, max(rating) from customers group by rating;
6) Write a query that counts the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once.).
Ans:- select count(odate),odate from orders group by odate;