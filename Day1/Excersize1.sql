create table SEMP
(
EMPNO CHAR(4),
EMPNAME CHAR(20),
BASIC FLOAT(9,2),
DEPTNO CHAR(2),
DEPTHEAD CHAR(4)
);

create table SDEPT
(
DEPTNO CHAR(2),
DEPTNAME CHAR(15)
);

insert into SDEPT
values( '10', 'Development');
insert into SDEPT
values( '20', 'Training');

insert into SEMP
values( '0001', 'SUNIL', 6000, '10', '');

