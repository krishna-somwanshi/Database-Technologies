create database cdac;
show databases;
use cdac;

create table SALESPEOPLE
(
snum int(4),
sname varchar(10),
city varchar(10),
comm float(3,2)
);

create table CUSTOMERS
(
Cnum int(4),
Cname varchar(10),
City varchar(10),
Rating int(4),
Snum int(4)
);

create table ORDERS
(
Onum int(4),
Amt float(7,2),
Odate date,
Cnum int(4),
Snum int(4)
);

insert into salespeople
values(1001, 'Peel', 'London', .12);
insert into salespeople
values(1002, 'Serres', 'San Jose', .13);
insert into salespeople
values(1004, 'Motika', 'London', .11);
insert into salespeople
values(1007, 'Rifkin', 'Barcelona', .15);
insert into salespeople
values(1003, 'Axelord', 'New York', .10);

insert into customers
values(2001,'Hoffman','London', 100, 1001);
insert into customers
values(2002,'Giovanni','Rome', 200, 1003);
insert into customers
values(2003,'Liu','San Jose', 200, 1002);
insert into customers
values(2004,'Grass','Berline', 300, 1002);
insert into customers
values(2006,'Clemens','London', 100, 1001);
insert into customers
values(2008,'Cisneros','San Jose', 300, 1007);
insert into customers
values(2007,'Pereira','Rome', 100, 1004);


insert into ORDERS
values( 3001, 18.69,'1990-10-03', 2008, 1007);
insert into ORDERS
values( 3003, 767.19,'1990-10-03', 2001, 1001);
insert into ORDERS
values( 3002, 1900.10,'1990-10-03', 2007, 1004);
insert into ORDERS
values( 3005, 5160.45,'1990-10-03', 2003, 1002);
insert into ORDERS
values( 3006, 1098.16,'1990-10-03', 2008, 1007);
insert into ORDERS
values( 3009, 1713.23,'1990-10-04', 2002, 1003);
insert into ORDERS
values( 3007, 75.75,'1990-10-04', 2004, 1002);
insert into ORDERS
values( 3008, 4723.00,'1990-10-05', 2006, 1001);
insert into ORDERS
values( 3010, 1309.95,'1990-10-06', 2004, 1002);
insert into ORDERS
values( 3011, 9891.88,'1990-10-06', 2006, 1001);
