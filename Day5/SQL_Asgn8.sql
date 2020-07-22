Assignment –8
Formatting Query output.
1) Assume each salesperson has a 12% commission. Write a query on the orders table that will produce the order number, the salesperson number, and the amount of the salesperson’s commission for that order.
Ans:- SELECT onum, snum, amt*0.12 as "COMMISSION" FROM orders ORDER BY snum;

2) Write a query on the Customers table that will find the highest rating in each city. Put the output in this form:
For the city (city), the highest rating is : (rating).
Ans:- SELECT city, MAX(rating) FROM customers GROUP BY city;

3) Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customer’s name and number.
Ans:- SELECT rating, cname, cnum FROM customers GROUP BY city ORDER BY rating DESC;

4) Write a query that totals the orders for each day and places the results in descending order.
Ans:- SELECT count(snum), odate FROM orders GROUP BY odate ORDER BY count(snum) DESC; 