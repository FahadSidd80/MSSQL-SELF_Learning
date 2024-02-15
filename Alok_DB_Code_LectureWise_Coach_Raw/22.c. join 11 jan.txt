create database Batch9_11121
use Batch9_11121

create table Employee
(
id int primary key identity,
name varchar(50),
salary int,
countryid int
) 
insert into Employee(name,salary,countryid)values('alok',500,3)
insert into Employee(name,salary,countryid)values('Arvind',700,1)
insert into Employee(name,salary,countryid)values('Shubhanshi',900,1)
insert into Employee(name,salary,countryid)values('Sweta',300,2)
insert into Employee(name,salary,countryid)values('Hitesh',800,2)
insert into Employee(name,salary,countryid)values('Deepak',500,3)

create table Country
(
cid int primary key identity,
cname varchar(50)
)

insert into Country(cname)values('India')
insert into Country(cname)values('Pakistan')
insert into Country(cname)values('Japan')
------------------------------------------------------
select * from Employee
select * from Country

select * from Employee join Country on Employee.countryid=Country.cid
select id,name,salary,cname from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name,Employee.salary,Country.cname from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name as EmployeeName,Employee.salary,Country.cname as CountryName from Employee join Country on Employee.countryid=Country.cid
---------------------------------------------------------
select * from Employee inner join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid
select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee cross join Country 
------------------------------------------------------------
--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN




11 jan 21 join 3rd