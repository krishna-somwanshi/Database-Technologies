Sameer Dehadrai Page: 1
Assignment –6
Using Special Operators in Conditions.
1) Write two different queries that would produce all orders taken on October 3rd or 4th, 1990.
Ans:-select * from orders where odate in ('1990-10-03','1990-10-04');
	 select * from orders where odate='1990-10-03' or odate='1990-10-04';

2) Write a query that selects all of the customers serviced by Peel or Motika.
(Hint: the snum field relates the two tables to one another).
Ans:-
select * from customers where snum =(select snum from salespeople where sname='Peel') or  snum=(select snum from salespeople where sname='Motika');

3) Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’.
Ans:- select * from customers where cname between 'A%' and 'H%';

4) Write a query that selects all customers whose names begin with the letter ‘C’.
Ans:-select * from customers where cname like 'c%';

5) Write a query that selects all orders except those with zeroes or NULLs in the amt field.
Ans:- select * from orders where amt not in (0,'NULL');