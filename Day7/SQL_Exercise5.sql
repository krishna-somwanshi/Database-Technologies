SQL Exercise 5
1. Display the Supplier name and the Quantity sold.
Ans:- select sname, Qyt from s, spj where s.`s#` = spj.`s#`;
2. Display the Part name and Quantity sold.
Ans:- select pname, Qyt from p, spj where p.`p#` = spj.`p#`;
3. Display the Project name and Quantity sold.
Ans:- select jname, Qyt from j, spj where j.`j#` = spj.`j#`;
4. Display the Supplier name, Part name, Project name and Quantity sold.
Ans:- select sname, pname, jname, Qyt from s, p, j, spj 
	  where s.`s#` = spj.`s#` and j.`j#` = spj.`j#` and p.`p#` = spj.`p#`;
5. Display the Supplier name, Supplying Parts to a Project in the same City.
Ans:- select sname, pname from s, p where s.city = p.city;
6. Display the Part name that is ‘Red’ is color, and the Quantity sold.
Ans:- select pname, color, Qyt from p, spj where color = 'Red' and p.`p#` = spj.`p#`;
7. Display all the Quantity sold by Suppliers with the Status = 20.
Ans:- select qyt, status from spj, s where status = 20 and s.`s#` = spj.`s#`;
8. Display all the Parts and Quantity with a Weight > 14.
Ans:- select pname, weight , Qyt from p, spj where weight > 14 and p.`p#` = spj.`p#`;
9. Display all the Project names and City, which has bought more than 500 Parts.
Ans:- select pname, city from p, spj where spj.Qyt > 500 and p.`p#` = spj.`p#`;
10. Display all the Part names and Quantity sold that have a Weight less than 15.
Ans:- select pname, qyt from p , spj where weight < 15 and p.`p#`=spj.`p#`;
11. Display all the Employee names and the name of their Managers.
Ans:- SELECT e.ename, m.ename FROM emp e
      JOIN emp m ON e.empno = m.job;

		 