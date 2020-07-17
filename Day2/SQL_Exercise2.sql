SQL Exercise 2
1. Display the Supplier table in the descending order of CITY.
Ans:- Select * from S order by city desc;
2. Display the Part Table in the ascending order of CITY and within the city in the ascending order of Part names.
Ans:-select * from p order by city, pname;
3. Display all the Suppliers with a status between 10 and 20.
Ans:-select * from s where status>10 and status<20;
4. Display all the Parts and their Weight, which are not in the range of 10 and 15.
Ans:-select * from p where Not weight>10 and weight<15;
5. Display all the Part names starting with the letter ‘S’.
Ans:-select pname from p where pname like "s%";
6. Display all the Suppliers, belonging to cities starting with the letter ‘L’.
Ans:- select * from s where city like "L%";
7. Display all the Projects, with the third letter in JNAME as ‘n’.
Ans:- select * from j where jname like "__n%";





