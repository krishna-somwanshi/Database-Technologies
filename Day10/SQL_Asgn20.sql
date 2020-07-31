Assignment – 20
Changing Values through Views.
1) Which of these views are updateable (will allow DML operations)?
Ans:-
#1 Create View Dailyorders
as Select Distinct cnum, snum, onum, odate from Orders;

#4 Create view Nullcities
as Select snum, sname, city
from Salespeople
where city is NULL
OR sname BETWEEN ‘A’ and ‘MZ’;

Above two views are updateable.

2) Create a view of the Salespeople table called Commissions. This view will include
only the snum and comm fields. Through this view, someone could enter or change
commissions, but only to values between .10 and .20.
Ans:- create view commission as select snum, comm from salespeople where comm between 0.10 and 0.20;

3) Some SQL implementations have a built-in constant representing the current date,
sometimes called “CURDATE” or “SYSDATE”. The word SYSDATE can
therefore be used in a SQL statement, and be replaced by the current date when the
value is accessed by commands such as Select or Insert. We will use a view of the
Orders table called Entryorders to insert rows into the Orders table. Create the
Orders table, so that SYSDATE is automatically inserted for odate if no value is
given. Then create the Entryorders view so that no values can be given.
Ans:-
