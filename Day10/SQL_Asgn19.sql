Assignment – 19
Views.
1) Create a view that shows all of the customers who have the highest ratings.
Ans:- create view highest as select * from customers where rating = (select max(ratinng) from customers);

2) Create a view that shows the number of salespeople in each city.
Ans:- create view number as select city, count(*) from salespeople group by city;

3) Create a view that shows the average and total orders for each salesperson after his or her name. Assume all names are unique.
Ans:- create view average as select sname, avg(onum), count(onum) from salespeople; 

4) Create a view that shows each salesperson with multiple customers.
Ans:- create view cust as select sname, cname from salespeople, customers;