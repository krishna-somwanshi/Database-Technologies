Assignment – 17
Constraining the Values of your data.
1) Create the Orders table so that all onum values as well as all combinations of cnum and snum are different from one another, and so that NULL values are excluded from the date field.
Ans:-
create table orderr
(
	onum int(4),
    cnum int(4),
    snum int(4),
    odate date NOT NULL,
    primary key (onum, cnum, snum)
);

2) Create the Salespeople table so that the default commission is 10% with no NULLS permitted, snum is the primary key, and all names fall alphabetically between A and M, inclusive (assume all names will be uppercase).
Ans:-
create table salespeoplee
(
	comm int(4) default 10,
    snum int(4) primary key,
    sname varchar(15) check(sname=upper(sname) between 'A' and 'M')
);

3) Create the Orders table, making sure that the onum is greater than the cnum, and the cnum is greater that the snum. Allow no NULLS in any of these three fields.
Ans:-
create table orderss
(
	onum int(4) NOT NULL,
    cnum int(4) NOT NULL,
    snum int(4) NOT NULL,
    check (onum > cnum and cnum > snum)
);
