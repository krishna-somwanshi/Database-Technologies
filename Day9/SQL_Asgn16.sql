Assignment – 16
Creating Tables and Indexes.
1) Write a command that will enable a user to pull orders grouped by date out of the Orders table quickly.
Ans:- create index d_order on orders(odate);

2) If the Orders table has already been created, how can you force the onum field to be unique (assume all current values are unique)?
Ans:- alter table orders modify onum constraint o_pk primary key;

3) Create an index that would permit each salesperson to retrieve his or her orders grouped by date quickly.
Ans:- create index I_DATE on orders(odate);

4) Let us assume that each salesperson is to have only one customer of a given rating, and that this is currently the case. Enter a command that enforces it.
Ans:- alter table customers modify rating primary key;