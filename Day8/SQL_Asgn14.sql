Assignment – 14
Entering, Deleting, and Changing Field Values.
1) Write a command that puts the following values, in their given order, into the salespeople table: city – San Jose, name – Blanco, comm – NULL, cnum – 1100.
Ans:- insert into salespeople (city, name, comm, cnum)
	  values('San Jose', 'Blanco', NULL, 1100);
	  
2) Write a command that removes all orders from customer Clemens from the Orders table.
Ans:- delete from orders where cnum in
	  (select cnum from customers where cname='Clemens');
	  
3) Write a command that increases the rating of all customers in Rome by 100.
Ans:- update customers set rating=rating+100;

4) Salesperson Serres has left the company. Assign her customers to Motika.
Ans:- update customers set snum = (select snum from salespeople where sname='serres')
	where snum = (select snum from salespeople where sname = 'Motika');
