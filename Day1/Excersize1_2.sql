create database cdac2;
use cdac2;
show tables;

create table S
(
`s#` char(2),
Sname varchar(25),
Status varchar(25),
City varchar(10)
);

create table P
(
`P#` char(2),
Pname varchar(25),
Color varchar(10),
Weight int(4),
City varchar(10)
);

create table J
(
`J#` char(2),
Jname varchar(25),
City varchar(10)
);

create table SPJ
(
`s#` char(2),
`P#` char(2),
`J#` char(2),
Qyt int(4)
);

insert into s
values('s1',NULL,'10',NULL);
insert into s
values('s2',NULL,'20',NULL);
insert into s
values('s3',NULL,'30',NULL);

insert into p
values('p1',NULL,NULL, NULL,NULL);
insert into p
values('p2',NULL,NULL, NULL,NULL);
insert into p
values('p3',NULL,NULL, NULL,NULL);

insert into j
values('j1',NULL,NULL);
insert into j
values('j2',NULL,NULL);
insert into j
values('j3',NULL,NULL);

insert into spj
values('s1','p1','j1',NULL);
insert into spj
values('s2','p2','j2',NULL);
insert into spj
values('s3','p3','j3',NULL);

Q.5) select * from s;

Q.6) select 's#','Sname' from s;

Q.7) select 'Pname','color' from p where city='London';

Q.8) select * from s where city='London';

Q.9) select * from s where city='Paris' or 'Athens';

Q.10) select * from p where city='Athens';

Q.11) select * from p where weight > 14 and weight < 16;

Q.12) select * from s where 'status => 20';

Q.13) select * from s where NOT city='London';

Q.14) select city from s;

Q.15) select weight*1000, weight/1000  from p;

