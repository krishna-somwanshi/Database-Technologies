SQL Exercise 3
1. Display all the Supplier names with the initial letter capital.
Select CONCAT(UPPER(SUBSTRING(sname,1,1)),LOWER(SUBSTRING(sname,2))) AS Name from Supplier;
2. Display all the Supplier names in upper case.
select upper(sname) from Supplier;
3. Display all the Supplier names in lower case.
select lower(sname) from supplier;
4. Display all the Supplier names padded to 25 characters, with spaces on the left.
select lpad(sname,25,' ') from Supplier;
5. Display all the Supplier names (with ‘la’ replaced by ‘ro’).
HINT: REPLACE.
select replace(sname,'la','ro') from supplier;
6. Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’.
select replace(replace(sname,'l','r'),'a','o') from supplier;
7. Display the Supplier names and the lengths of the names.
select ename,length(sname) from supplier;
8. Use the soundex function to search for a supplier by the name of ‘BLOKE’.
select * from supplier where soundex(sname) = soundex('BLOKE');