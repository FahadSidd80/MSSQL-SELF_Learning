Create database DB_Practice_280923_RealConcepts
use DB_Practice_280923_RealConcepts

create table dbo.tblEmployee
(
empid int primary key identity,
empname varchar(100),
empcity varchar(100),
empage int
)

--SELECT * FROM sys.schemas; -- to view no of schema
--Dbo stands for database owner. It is a user account that has implied permissions to
--perform all activities in the database.
--In SQL, there is no difference between dbo.tablename and tablename. However, using 
--dbo.tablename can provide a performance benefit.

-- GENERATIVE AI 

select * from tblEmployee
select * from dbo.tblEmployee

insert into tblEmployee(empname,empcity,empage)values('Fahad','Lucknow',23)
insert into tblEmployee(empname,empcity,empage)values('Ali','Kanpur',20)
insert into tblEmployee(empname,empcity,empage)values('Hamza','Agra',21)

insert into tblEmployee(empcity,empage)values('Noida',29)

insert into dbo.tblEmployee(empname,empcity,empage)values('Zarrish','Bareily',23)

update tblEmployee set empname='Kamran' where empid=2
update tblEmployee set empname='Laraib' where empid=5
update tblEmployee set empage='10' where empname=' '

select * from tblEmployee
select * from dbo.tblEmployee

------------------------------------------------------------------------------------------------

create table tblStudent
(
st_id int primary key identity(1,1) not null,
st_name varchar(100) not null,
st_city varchar(100) not null,
st_age int not null,
st_status int default 0 not null,
st_inserted_date date default getdate() not null
)

insert into tblStudent(st_name,st_city,st_age)values('Abdul','Noida',34)
insert  tblStudent(st_name,st_city,st_age)values('Anas','Delhi',24)
insert into tblStudent(st_name,st_city,st_age)values('Sania','Bareily','14')

insert into tblStudent(st_city,st_age)values('Bareily','14')
insert into tblStudent(st_name,st_city,st_age)values('NULL','Bareily','14')
insert into tblStudent(st_name,st_city,st_age)values('0','Bareily','14')
insert into tblStudent(st_name,st_city,st_age)values('0','Bareily','14')


select * from tblStudent

--1	Abdul	Noida	34	0	2023-09-28
--2	Anas	Delhi	24	0	2023-09-28
--3	Sania	Bareily	14	0	2023-09-28
-----------------------------------------------------------------------------------------------

create table tblPatient
(
pt_id int primary key identity(1,2),
pt_name varchar(100)  null,
pt_city varchar(100)  null,
pt_age int null,
pt_status int default 0  null,
pt_inserted_date date default getdate()  null
)


insert into tblPatient(pt_name,pt_city,pt_age)values('Abdul','Noida',34)
insert  tblPatient(pt_name,pt_city,pt_age)values('Anas','Delhi',24)
insert into tblPatient(pt_name,pt_city,pt_age)values('Sania','Bareily','14')

insert into tblPatient(pt_city,pt_age)values('Bareily','14')
insert into tblPatient(pt_name,pt_city)values('Sana','Sultanpur')

select * from tblPatient
--1	Abdul	Noida	34	0	2023-09-28
--3	Anas	Delhi	24	0	2023-09-28
--5	Sania	Bareily	14	0	2023-09-28

----------------------------------------------------------------------------------------

---lecture No 21

create table tblLibrary
(
libid int  primary key identity,
name varchar(100),
department int,
status_lib int default 0,
inserted_date date
)
-- Changing varchar of Country column
alter table tblEmployee alter column country varchar(100)
alter table tblLibrary alter column department varchar(100)

delete tblLibrary

alter table tblLibrary alter column department int

create table tblDepartment
(
dpid int primary key identity,
departmentname varchar(100),
status_dep int default 0,
inserted_date date
)

insert into tblLibrary(name,department,inserted_date)values('Fahad','1',GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Hamza','2',GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Ali','3',GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Faraz','4',GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Almas',5,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Aman',6,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Abhishek',8,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Sana','4',GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Anam',9,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Arman',6,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Kamran',8,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Almas',10,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Aman',11,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Abhishek',12,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Sana','13',GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Anam',14,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Arman',15,GETDATE())
insert into tblLibrary(name,department,inserted_date)values('Kamran',16,GETDATE())


insert into tblDepartment(departmentname,inserted_date)values('B.TECH',GETDATE())
insert into tblDepartment(departmentname,inserted_date)values('M.TECH',GETDATE())
insert into tblDepartment(departmentname,inserted_date)values('MEDICAL',GETDATE())
insert into tblDepartment(departmentname,inserted_date)values('MANAGEMENT',GETDATE())
insert into tblDepartment(departmentname,inserted_date)values('SCIENCE',GETDATE())
insert into tblDepartment(departmentname,inserted_date)values('ARTS',GETDATE())
insert into tblDepartment(departmentname,inserted_date)values('AGRICULTURE',GETDATE())


select * from tblLibrary
select * from tblDepartment

drop table tblLibrary
drop table tblDepartment

--JOIN CONCEPTS  START

select * from tblLibrary join tblDepartment 
on tblLibrary.department = tblDepartment.dpid


select name, departmentname from tblLibrary join tblDepartment 
on tblLibrary.department = tblDepartment.dpid


select name,departmentname from tbldepartment  
join tbllibrary on tbldepartment.dpid = tbllibrary.department


select name,departmentname from tbldepartment  
inner join tbllibrary on tbldepartment.dpid = tbllibrary.department


--Here are the different types of the JOINs in SQL: W3SCHOOL

--1.(INNER) JOIN: Returns records that have matching values in both tables

--2.LEFT (OUTER) JOIN: Returns all records from the left table, and the matched
---records from the right table
--The LEFT JOIN keyword returns all records from the left table (table1), and the matching 
--records from the right table (table2). The result is 0 records from the right side, 
--if there is no match.
--The LEFT JOIN keyword returns all records from the left table (Customers), even if 
--there are no matches in the right table (Orders).

--3.RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched
-----records from the left table

--The RIGHT JOIN keyword returns all records from the right table (table2),
--and the matching records from the left table (table1). 
--The result is 0 records from the left side, if there is no match.

--4.FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
--The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right 
--(table2) table records.

--Note: The FULL OUTER JOIN keyword returns all matching records from both tables whether the 
--other table matches or not. So, if there are rows in "Customers" that do not have matches 
--in "Orders", or if there are rows in "Orders" that do not have matches in "Customers",
--those rows will be listed as well.

-- LEFT (OUTER) JOIN
select * from tblLibrary 
left outer join tbldepartment on tbllibrary.department = tbldepartment.dpid

select name,departmentname from tblLibrary 
left outer join tbldepartment on tbllibrary.department = tbldepartment.dpid

--RIGHT (OUTER) JOIN:
select name,departmentname from tblLibrary 
right outer join tbldepartment on tbllibrary.department = tbldepartment.dpid

--Fahad	B.TECH
--Hamza	M.TECH
--Ali	MEDICAL
--Faraz	MANAGEMENT
--Sana	MANAGEMENT
--Almas	SCIENCE
--Aman	ARTS
--Arman	ARTS
--NULL	AGRICULTURE


select * from tblLibrary 
right outer join tbldepartment on tbllibrary.department = tbldepartment.dpid

--1	Fahad	1	0	2023-10-02	1	B.TECH	0	2023-10-02
--2	Hamza	2	0	2023-10-02	2	M.TECH	0	2023-10-02
--3	Ali	3	0	2023-10-02	3	MEDICAL	0	2023-10-02
--4	Faraz	4	0	2023-10-02	4	MANAGEMENT	0	2023-10-02
--8	Sana	4	0	2023-10-02	4	MANAGEMENT	0	2023-10-02
--5	Almas	5	0	2023-10-02	5	SCIENCE	0	2023-10-02
--6	Aman	6	0	2023-10-02	6	ARTS	0	2023-10-02
--10	Arman	6	0	2023-10-02	6	ARTS	0	2023-10-02
--NULL	NULL	NULL	NULL	NULL	7	AGRICULTURE	0	2023-10-02

create table tblRailways
(
rempid int primary key identity,
department int,
empname varchar(100),
empsalary int
)

create table tblRaildepartment
(
rdpid int primary key identity,
raildepartmentname varchar(100),

)

insert into tblRailways(department,empname,empsalary)values(5,'Fahad',2000)
insert into tblRailways(department,empname,empsalary)values(6,'Hamza',2500)
insert into tblRailways(department,empname,empsalary)values(7,'Kamran',5000)
insert into tblRailways(department,empname,empsalary)values(8,'Danish',5000)
insert into tblRailways(department,empname,empsalary)values(9,'Ajmal',2400)



insert into tblRaildepartment(raildepartmentname)values('Loco')
insert into tblRaildepartment(raildepartmentname)values('GRP')
insert into tblRaildepartment(raildepartmentname)values('Officers')
insert into tblRaildepartment(raildepartmentname)values('Labour')
insert into tblRaildepartment(raildepartmentname)values('Pantry')

select * from tblRailways 
select * from tblRaildepartment


select * from tblRailways 
join tblRaildepartment on tblRailways.department = tblRaildepartment.rdpid

select * from tblRailways
left outer join tblRaildepartment on tblRailways.department = tblRaildepartment.rdpid


select * from tblRailways
right outer join tblRaildepartment on tblRailways.department = tblRaildepartment.rdpid

delete from tblRaildepartment where rdpid=5

--Tip: FULL OUTER JOIN and FULL JOIN are the same.
select * from tblRailways
full outer join tblRaildepartment on tblRailways.department = tblRaildepartment.rdpid

select * from tblRaildepartment
full outer join tblRailways on tblRaildepartment.rdpid = tblRailways.department 

-- Self Join
-- Synatx
--SELECT column_name(s)
--FROM table1 T1, table1 T2
--WHERE condition;

create table tblCustomers
(
CustomerID	 int primary key identity,
CustomerName varchar(100),	
ContactName	varchar(100),
Address	varchar(100),
City	varchar(100),
PostalCode	int,
Country varchar(100),
status int default 0,
inserted_date date
)

insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Fahad','Ali','223, Goln Sultanpur','Sultanpur',228119,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Ali Hamza','Hamza sid','Vill and Post Kanpur','Kanpur',229817,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Ali abdul','Abdul sid','123, Sultanpur','Sultanpur',229988,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Fatima','Fatima sid','Alex Lucknow','Agra',768798,'India',GETDATE())
insert into tblCustomers(CustomerName,ContactName,Address,City,PostalCode,Country,inserted_date) values('Wamique','Wamique shaeikh','POst Agra','Lucknow',989809,'India',GETDATE())

truncate table tblCustomers
drop table tblCustomers

select * from tblCustomers

---SELECT column_name(s)
--FROM table1 T1, table1 T2
--WHERE condition;

select * from tblCustomers

select t1.CustomerName as customername1, t2.customername as customername2, t1.city
from tblCustomers t1 , tblCustomers t2 
where t1.CustomerID <> t2.CustomerID and t1.city = t2.city
order by t1.city

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM tblCustomers A, tblCustomers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

-- Not able to understand self join-- need to study further

-- cross join 

--3. CROSS JOIN 
select * from tblEmployee cross join tblCountry -- gives total combinations of id
-- like employee table has 7 unique records and Country table has 3 unique records  so total possible condition will be 7*3 = 21
select * from tblRailways
select * from tblRaildepartment
select * from tblRailways cross join tblRaildepartment




--  Union

--The UNION operator is used to combine the result-set of two or more SELECT statements.

--Every SELECT statement within UNION must have the same number of columns
--The columns must also have similar data types
--The columns in every SELECT statement must also be in the same order

select * from tblEmployee
select * from tblstudent

select empcity from tblEmployee
union
select st_city from tblStudent

select empcity from tblEmployee
union all
select st_city from tblStudent
























