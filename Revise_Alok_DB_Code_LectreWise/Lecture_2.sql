
-- lecture No 22
-- Lecture 2-- JOIN Before advanced
--will count no of table in Database
create database DB_112223_L3 
use DB_112223_L3


SELECT COUNT(*)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'


SELECT COUNT(*)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'-- This Query Count no of table present in Current Database


create table tblEmployee
(
id int primary key identity,
name varchar(50),
salary int,
countryid int,
status int default 0,
inserted_date date
) 

insert into tblEmployee(name,salary,countryid,inserted_date)values('alok',500,1, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Arvind',700,2, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Shubhanshi',900,3, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Sweta',300,4, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hitesh',800,5, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Deepak',500,6, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Fahad',800,7, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hamza',500,8, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Kamran',800,9, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Anans',500,10, GETDATE())

delete from tblEmployee where id=10

select * from tblEmployee 

truncate table tblEmployee-- delete all records and we can use new ID  but table remain.
drop table tblEmployee-- delete whole table object,need to create new table gain
delete  from tblEmployee where name='alok'  and id=1-- delete all records but we cant use new id

create table tblCountry
(
countryid int primary key identity,
cname varchar(50)
)

truncate table tblCountry-- isme table along with ID Delete ho jaegi..but table nahi.
drop table tblCountry
select * from tblCountry

insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('Japan')
insert into tblCountry(cname)values('USA')
insert into tblCountry(cname)values('Canada')
insert into tblCountry(cname)values('Colambia')
insert into tblCountry(cname)values('Afghanistan')
insert into tblCountry(cname)values('UAE')
------------------------------------------------------



-- JOIN
select * from tblEmployee
select * from tblCountry

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid
select * from tblEmployee join tblCountry on  tblCountry.countryid = tblEmployee.countryid
select * from tblEmployee inner join tblCountry on tblCountry.countryid = tblEmployee.countryid
select * from tblEmployee inner join tblCountry on  tblEmployee.countryid =tblCountry.countryid 
--------Both above join query are same. means give same output

select * from tblEmployee join tblCountry on tblEmployee.countryid = tblcountry.countryid
-- extract all record of both table

select top(1) * from tblEMployee inner join tblCountry on tblEMployee.countryid = tblcountry.countryid

select top(1) * from tblEmployee join tblcountry on tblemployee.countryid = tblcountry.countryid

select * from tblEMployee join tblCountry on tblEMployee.countryid = tblcountry.countryid

select * from tblcountry
-- Self Join sifr matched record nikalega table se. unmatched ko nahi na hi null record dega. means act as union of math

select tblEMployee.name as EmpName,tblEMployee.salary as EmpSalary,tblEMployee.inserted_date as InsertedDate,tblcountry.cname as CountryName from tblEMployee join tblCountry on tblEmployee.countryid = tblCountry.COuntryid

------------------------------------------------------------------------------------------
select * from tblCountry join tblEmployee on tblEmployee.countryid = tblCountry.countryid -- it gives country table on left
select * from tblCountry join tblEmployee on tblCountry.countryid = tblEmployee.countryid
select * from tblCountry inner join tblEmployee on tblEmployee.countryid = tblCountry.countryid -- it gives country table on left
select * from tblCountry inner join tblEmployee on tblCountry.countryid = tblEmployee.countryid  
--------Both above join query are same. means give same output

--NOTE :- If we change type of Countryid column then no affect happen in join.
-- Eg: 
alter table tblEmployee  alter column countryid varchar(100)
select * from tblCountry join tblEmployee on tblEmployee.countryid = tblCountry.countryid 

select top(2) * from tblEmployee inner join  tblCountry on tblEmployee.countryid = tblcountry.countryid
--*-- means select all columns na ki rows.
select top(2) name,salary from tblEmployee inner join  tblCountry on tblEmployee.countryid = tblcountry.countryid
--------------------------------------------------------------------------------------------------


select id,name,salary,cname from tblEmployee join Country on tblEmployee.countryid=Country.countryid
-- this query gives selected column from Joined table....
---------------------------------------------------------------------------------------
select id,name,salary from tblEmployee
select id,name from tblEmployee -- this query gives selected column
--------------------------------------------------------------

select id,name,salary,cname from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.countryid
select tblEmployee.id,tblEmployee.name,tblEmployee.salary,tblCountry.cname from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.countryid
-----Both above query gives same output.........

select tblEMployee.name as EmpName,tblEMployee.salary as EmpSalary,tblEMployee.inserted_date as InsertedDate,tblcountry.cname as CountryName from tblEMployee inner join tblCountry on tblEmployee.countryid = tblCountry.COuntryid


---ALIASING------

---THIS CONCEPT CALLLED ALIASING IN DATABSE WHICH IS MOST MOST IMPORTANT PART OF DB.
select tblEmployee.id,tblEmployee.name as EmployeeName,tblEmployee.salary,tblCountry.cname 
as CountryName from tblEmployee 
join tblCountry on tblEmployee.countryid=tblCountry.countryid

select id as EmpID, name as EmpName , salary EmpSalary, cname as CountryName from tblEmployee 
join tblCountry on tblEMployee.countryid = tblcountry.countryid


select tblEmployee.id,tblEmployee.name as tblEmployeeName from tblEmployee
select tblEmployee.id,tblEmployee.name as tblEmployeeName from tblEmployee 
join tblCountry on tblEmployee.countryid=tblCountry.countryid

-- last exect on 26/04/23

select tblEmployee.id,tblEmployee.name as EmployeeName from tblEmployee 
select tblEmployee.id,tblEmployee.name from tblEmployee

select tblEmployee.id as EmployeeID from tblEmployee

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName from tblEmployee 

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName, tblEmployee.salary as EmployeeSalary from tblEmployee

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName, tblEmployee.salary as EmployeeSalary, tblCountry.countryid as CountryID, tblCountry.cname as CountryName from tblEmployee join tblCountry on tblEmployee.Countryid= tblCountry.countryid

-- as/ AS is optional in aliasing eg:- given below
select tblEmployee.id  EmployeeID, tblEmployee.name  EmployeeName, tblEmployee.salary  EmployeeSalary, tblCountry.countryid  CountryID, tblCountry.cname  CountryName from tblEmployee join tblCountry on tblEmployee.Countryid= tblCountry.countryid

-------------------------------------------------------Aliasing me aur kya hai pata nahi------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------JOIN-----------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN) 
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN


-- INNER JOIN --  Returns only records that have matching values in both tables by W3C

--JOIN kaho ya INNER JOIN Both are same........... Inner keyword has no significance
select * from tblEmployee inner join tblCountry on tblEmployee.countryid=tblCountry.countryid 
-- Inner is optional, Kahani hai, only concept hai theory waala kuch written me nahi hai
select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid

select * from tblEmployee join tblCountry on tblEMployee.countryid = tblcountry.countryid

select * from tblEmployee
select * from tblCountry
--------------------------------------------------------------------------------------------

--OUTER JOIN  


-- 1. LEFT JOIN 
-- 2. RIGHT JOIN
-- 3. FULL JOIN

---OR ----
-- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai

-- 1. LEFT OUTER JOIN 
-- 2. RIGHT OUTER JOIN
-- 3. FULL  OUTER JOIN


-----------------------------------------------------------------------------------------------------------------------------
--1. LEFT JOIN 


select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblEMployee left outer join tblCountry on tblEmployee.countryid = tblCountry.countryid
select * from tblCountry left outer join tblEmployee on tblCountry.countryid = tblEmployee.countryid




select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same outp


--1. LEFT OUTER JOIN  --Returns all records from the left table, and the matched records from the right table
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.countryid


select * from tblemployee left join tblcountry  on tblemployee.countryid = tblcountry.countryid
select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid
-- LEFT JOIN , LEFT OUTER JOIN all are same gives same output


------------------------------------------------------------------------------------------------------------------------------------------------------


-- 2. RIGHT JOIN -- Returns all records from the right table, and the matched records from the left table


select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.countryid


select * from tblEmployee right outer join tblcountry on tblemployee.countryid = tblcountry.countryid
select * from tblcountry right outer join tblemployee on tblemployee.countryid = tblcountry.countryid

select * from tblcountry right outer join tblemployee on tblemployee.countryid = tblcountry.countryid
select * from tblcountry right outer join tblemployee on tblcountry.countryid = tblemployee.countryid


select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid

--2. RIGHT OUTER JOIN   -- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai
-- Returns all records from the right table, and the matched records from the left table

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblemployee right outer join tblcountry on tblemployee.countryid =  tblcountry.countryid


--------------------------------------------------------------------------------------------------------------------------
--3.	FULL JOIN-- Returns all records when there is a match in either left or right table
--dono table record dega jo match ho raha hai aur jo nahi ho raha hai. 

select * from tblEmployee full join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee full outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from  tblCountry full outer join tblEmployee on tblEmployee.countryid = tblcountry.countryid

select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid
select * from tblEmployee inner join tblCountry on tblEmployee.countryid= tblCountry.countryid

select * from tblEmployee full outer join tblCountry 
on tblEmployee.countryid = tblcountry.countryid

select * from tblCountry full outer join tblemployee on tblemployee.countryid = tblcountry.countryid

select * from tblemployee full outer join tblcountry on tblemployee.countryid = tblcountry.countryid
on tblcountry.countryid = tblemployee.countryid

select * from tblemployee full outer join tblcountry

--3.	FULL  OUTER JOIN -- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

select * from tblEmployee full join tblCountry on tblEmployee.Countryid=tblCountry.countryid
select * from tblEmployee full outer join tblCountry on tblEmployee.Countryid=tblCountry.countryid

select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblEmployee right join Country on tblEmployee.countryid=Country.countryid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.countryid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid
select * from tblEmployee inner join tblCountry on tblEmployee.countryid= tblCountry.countryid

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--3. CROSS JOIN 
select * from tblEmployee cross join tblCountry -- gives total combinations of id
-- like employee table has 7 unique records and Country table has 3 unique records  so total possible condition will be 7*3 = 21

select * from tblEmployee cross join tblcountry
select * from  tblcountry cross join  tblEmployee

select * from tblcountry cross join tblemployee

------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.countryid
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee full join tblCountry on tblEmployee.countryid=tblCountry.countryid
select * from tblEmployee cross join tblCountry 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--JOIN or INNER JOIN 
select * from tblemployee join tblcountry on tblemployee.countryid = tblcountry.countryid -- like intersection 
select * from tblemployee inner join tblcountry on tblemployee.countryid = tblcountry.countryid
select * from tblcountry join tblemployee on tblemployee.countryid = tblcountry.countryid
select * from  tblcountry inner join tblemployee  on tblemployee.countryid = tblcountry.countryid

-- LEFT JOIN OR LEFT OUTER JOIN
select * from tblemployee left join tblcountry on tblemployee.countryid = tblcountry.countryid
select * from tblemployee left outer join tblcountry on tblemployee.countryid = tblcountry.countryid
select * from tblcountry left join tblemployee on tblemployee.countryid = tblcountry.countryid
select * from tblcountry left outer join tblemployee on tblemployee.countryid = tblcountry.countryid

--RIGHT JOIN OR RIGHT OUTER JOIN
select * from tblemployee right join tblcountry on tblemployee.countryid = tblcountry.countryid
select * from tblemployee right outer join tblcountry on tblemployee.countryid = tblcountry.countryid
select * from tblcountry right outer join tblemployee on tblemployee.countryid = tblcountry.countryid
select * from tblcountry right outer join tblemployee on tblemployee.countryid = tblcountry.countryid


--FULL JOIN  OR FULL OUTER JOIN
select * from tblemployee full join tblcountry on tblemployee.countryid= tblcountry.countryid
select * from tblemployee full outer join tblcountry on tblemployee.countryid = tblcountry.countryid
select * from tblcountry full join tblemployee on tblemployee.countryid = tblcountry.countryid
select * from tblcountry full outer join tblemployee on tblemployee.countryid = tblcountry.countryid


--CROSS JOIN 
select * from tblemployee cross join tblcountry
select * from tblcountry cross join tblemployee 

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN
--4) SELF JOIN -- A self join is a regular join, but the table is joined with itself.

--04 april23

select * from tblEmployee
select * from tblCountry

-------------------------------------------------------------
--4) SELF JOIN -- A self join is a regular join, but the table is joined with itself.

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


SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM tblCustomers A, tblCustomers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

select * from tblCustomers  
--11 jan 21 join 3rd -- sir
---------------------------------------------------------------------------------------------------------



