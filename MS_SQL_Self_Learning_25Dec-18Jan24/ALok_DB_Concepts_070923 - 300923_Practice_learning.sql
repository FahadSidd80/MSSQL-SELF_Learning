Create database DB_070923_300923_ALok_Concepts_Pract
use DB_070923_300923_ALok_Concepts_Pract

create table tblEmployee
(
empid int primary key identity,
name varchar(100),
age int,
salary int,
city varchar(100),
status int default 0,
inserted_date date default Getdate()
)

--  primary key -- No Null, No duplicate value
--Identity -- Auto increment  
-- int type column me no single quotes req.


drop table tblEmployee

insert into tblEmployee(name,age,salary,city)values('Fahad',23,4000,'Sultanpur')
insert into tblEmployee(name,age,salary,city)values('Hamza',27,4500,'Kanpur')
insert into tblEmployee(name,age,salary,city)values('Ali',28,5000,'Lucknow')
insert into tblEmployee(name,age,salary,city)values('Abdul',24,6000,'Delhi')
insert into tblEmployee(name,age,salary,city)values('Anas',22,10000,'Agra')
insert into tblEmployee(name,age,salary,city)values('Wamique',21,19000,'Noida')
insert into tblEmployee(name,age,salary,city)values('hasan',29,2000,'Varanasi')

select * from tblEmployee


update tblEmployee set name='Kamran',age=29,city='Baliya' where empid = 3
delete from tblEmployee where empid=5

-----------------------------------------------------------------------------------------------
--Interview Questions

insert tblEmployee(name,age,salary,city)values('Asif',30,9800,'Jaunpur')
delete tblEmployee where empid=8

-- here in Insert Query into is optional
-- and in Delete Query from is optional

------------------------------------------------------------------------------------------------

create database DB_JOIN_04102023
use DB_JOIN_04102023
---lecture No 21

create table tblEmployee
(
empid int  primary key identity,
name varchar(100),
country int
)
-- Changing type of Country column
alter table tblEmployee alter column country varchar(100)

create table tblCountry
(
cid int primary key identity,
cname varchar(100)
)

insert into tblEmployee(name,country)values('Fahad','1')
insert into tblEmployee(name,country)values('Hamza','2')
insert into tblEmployee(name,country)values('Ali','3')
insert into tblEmployee(name,country)values('Faraz','4')
insert into tblEmployee(name,country)values('Almas','5')
insert into tblEmployee(name,country)values('Aman','6')
insert into tblEmployee(name,country)values('Abhishek',8)


insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('USA')
insert into tblCountry(cname)values('Canada')
insert into tblCountry(cname)values('Russia')
insert into tblCountry(cname)values('UAE')
insert into tblCountry(cname)values('Egypt')

select * from tblEmployee
select * from tblCountry

select * from tblEmployee join tblCountry on tblEmployee.country=tblCountry.cid
----------------------------------------------------------------------
select empid,name,cname from tblEmployee join tblCountry on tblEmployee.country=tblCountry.cid
----
--create table tblEmployee_2
--(
--empid int  primary key identity,
--empid1 int primary key identity,
--name varchar(100),
--country int  
--)
-- In one table only 1 pK and identity is allowed.
-----------------------------------------------------------------------

create table tblCountry_3
(
cid int   primary key identity(1,2),
cname varchar(100)
)
insert into tblCountry_3(cname)values('India')
insert into tblCountry_3(cname)values('Pakistan')
insert into tblCountry_3(cname)values('USA')
insert into tblCountry_3(cname)values('Canada')
insert into tblCountry_3(cname)values('Russia')
insert into tblCountry_3(cname)values('UAE')
insert into tblCountry_3(cname)values('Egypt')


select * from tblCountry_3
drop table tblCountry_3
---------------------------------------------------------------------------



--------------------------------------------
create table tblCountry_2
(
cid varchar(100) primary key ,
cname varchar(100)
)



--insert into tblCountry_2(cid,cname)values(1123,'India')
--insert into tblCountry_2(cid,cname)values('1123','Pakistan')
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
--insert into tblCountry_2(cid,cname)values('10','Canada')
--insert into tblCountry_2(cid,cname)values('10','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('11HH','USA')
--insert into tblCountry_2(cid,cname)values('10XX','Canada')
--insert into tblCountry_2(cid,cname)values('10XX','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('','UAE')
--insert into tblCountry_2(cid,cname)values('','Egypt') -- duplicate
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
insert into tblCountry_2(cid,cname)values('0','Canada')
--insert into tblCountry_2(cid,cname)values('null','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
--insert into tblCountry_2(cid,cname)values('  ','Canada')
--insert into tblCountry_2(cid,cname)values('NULL','Russia') -- duplicate

select * from TblCountry_2
--------------------------------------------------------------

-- lecture No 22
--will count no table
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'

create table tblEmployee
(
id int primary key identity,
name varchar(50),
salary int,
countryid int
status int default 0,
inserted_date date
) 
insert into tblEmployee(name,salary,countryid,inserted_date)values('alok',500,3, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Arvind',700,1, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Shubhanshi',900,1, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Sweta',300,2, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hitesh',800,2, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Deepak',500,3, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Fahad',800,15, GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hamza',500,16, GETDATE())

truncate table tblEmployee

create table tblCountry
(
cid int primary key identity,
cname varchar(50)
)

insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('Japan')
------------------------------------------------------
-- JOIN
select * from tblEmployee
select * from tblCountry

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee join tblCountry on  tblCountry.cid = tblEmployee.countryid
select * from tblEmployee inner join tblCountry on tblCountry.cid = tblEmployee.countryid
select * from tblEmployee inner join tblCountry on  tblEmployee.countryid =tblCountry.cid 
--------Both above join query are same. means give same output
------------------------------------------------------------------------------------------
select * from tblCountry join tblEmployee on tblEmployee.countryid = tblCountry.cid -- it gives country table on left
select * from tblCountry join tblEmployee on tblCountry.cid = tblEmployee.countryid
select * from tblCountry inner join tblEmployee on tblEmployee.countryid = tblCountry.cid -- it gives country table on left
select * from tblCountry inner join tblEmployee on tblCountry.cid = tblEmployee.countryid  
--------Both above join query are same. means give same output
--NOTE :- If we change type of Countryid column then no affect happen in join.
-- Eg: 
alter table tblEmployee  alter column countryid varchar(100)
select * from tblCountry join tblEmployee on tblEmployee.countryid = tblCountry.cid 
--------------------------------------------------------------------------------------------------


select id,name,salary,cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
-- this query gives selected column from Joined table....
---------------------------------------------------------------------------------------
select id,name,salary from tblEmployee
select id,name from tblEmployee -- this query gives selected column
--------------------------------------------------------------

select id,name,salary,cname from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid
select tblEmployee.id,tblEmployee.name,tblEmployee.salary,tblCountry.cname from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid
-----Both above query gives same output.........


---ALIASING------

---THIS CONCEPT CALLLED ALIASING IN DATABSE WHICH IS MOST MOST IMPORTANT PART OF DB.
select tblEmployee.id,tblEmployee.name as EmployeeName,tblEmployee.salary,tblCountry.cname as CountryName from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid

select tblEmployee.id,tblEmployee.name as tblEmployeeName from tblEmployee
select tblEmployee.id,tblEmployee.name as tblEmployeeName from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid

-- last exect on 26/04/23

select tblEmployee.id,tblEmployee.name as EmployeeName from tblEmployee 
select tblEmployee.id,tblEmployee.name from tblEmployee

select tblEmployee.id as EmployeeID from tblEmployee

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName from tblEmployee 

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName, tblEmployee.salary as EmployeeSalary from tblEmployee

select tblEmployee.id as EmployeeID, tblEmployee.name as EmployeeName, tblEmployee.salary as EmployeeSalary, tblCountry.cid as CountryID, tblCountry.cname as CountryName from tblEmployee join tblCountry on tblEmployee.Countryid= tblCountry.cid

-- as/ AS is optional in aliasing eg:- given below
select tblEmployee.id  EmployeeID, tblEmployee.name  EmployeeName, tblEmployee.salary  EmployeeSalary, tblCountry.cid  CountryID, tblCountry.cname  CountryName from tblEmployee join tblCountry on tblEmployee.Countryid= tblCountry.cid

-------------------------------------------------------Aliasing me aur kya hai pata nahi------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------JOIN-----------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN


-- INNER JOIN --  Returns records that have matching values in both tables by W3C

--JOIN kaho ya INNER JOIN Both are same........... Inner keyword has no significance
select * from tblEmployee inner join tblCountry on tblEmployee.countryid=tblCountry.cid  -- Inner is optional, Kahani hai, only concept hai theory waala kuch written me nahi hai
select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid

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


select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid



select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same outp


--1. LEFT OUTER JOIN  --Returns all records from the left table, and the matched records from the right table
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid


select * from tblEmployee join Country on tblEmployee.countryid= Country.cid
-- LEFT JOIN , LEFT OUTER JOIN all are same gives same output


------------------------------------------------------------------------------------------------------------------------------------------------------


-- 2. RIGHT JOIN -- Returns all records from the right table, and the matched records from the left table


select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid

--2. RIGHT OUTER JOIN   -- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai
-- Returns all records from the right table, and the matched records from the left table

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid



--------------------------------------------------------------------------------------------------------------------------
--3.	FULL JOIN-- Returns all records when there is a match in either left or right table--dono table record dega jo match ho raha hai aur jo nahi ho raha hai. 

select * from tblEmployee full join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee full outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee inner join tblCountry on tblEmployee.countryid= tblCountry.cid




--3.	FULL  OUTER JOIN -- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

select * from tblEmployee full join tblCountry on tblEmployee.Countryid=tblCountry.cid
select * from tblEmployee full outer join tblCountry on tblEmployee.Countryid=tblCountry.cid

select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee left outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee right join Country on tblEmployee.countryid=Country.cid
select * from tblEmployee right outer join tblCountry on tblEmployee.countryid=tblCountry.cid

select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee inner join tblCountry on tblEmployee.countryid= tblCountry.cid

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--3. CROSS JOIN 
select * from tblEmployee cross join tblCountry -- gives total combinations of id
-- like employee table has 7 unique records and Country table has 3 unique records  so total possible condition will be 7*3 = 21


------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from tblEmployee join tblCountry on tblEmployee.countryid= tblCountry.cid
select * from tblEmployee left join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee right join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee full join tblCountry on tblEmployee.countryid=tblCountry.cid
select * from tblEmployee cross join tblCountry 
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






35.a.Database_16_03_2021_before_advance


create database batch11_16321
use batch11_16321
create table Employee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
department varchar(50)
)
insert into Employee(name,gender,salary,department)values('alok','male',400,'IT')
insert into Employee(name,gender,salary,department)values('rubina','female',800,'HR')
insert into Employee(name,gender,salary,department)values('Ashutosh','male',300,'IT')
insert into Employee(name,gender,salary,department)values('pooja','female',500,'Sales')
insert into Employee(name,gender,salary,department)values('Biraj','male',700,'HR')
insert into Employee(name,gender,salary,department)values('alka','female',600,'Sales')
insert into Employee(name,gender,salary,department)values('pp','other',450,'IT')
insert into Employee(name,gender,salary,department)values('kk','other',550,'HR')
insert into Employee(name,gender,salary,department)values('Dayanand','male',350,'Sales')
insert into Employee(name,gender,salary,department)values('Anwar','male',650,'HR')

select * from Employee

select gender,sum(salary) from Employee
group by gender

select gender,sum(salary)as Total_Salary from Employee
group by gender

select gender,sum(salary) Total_Salary from Employee
group by gender

select department,sum(salary) from Employee
group by department

select department,count(*) Total_Employee from Employee
group by department

select name,count(*) Total_Employee from Employee
group by name

---------------------------------------
select count(name),gender,sum(salary) Total_Salary from Employee
group by gender



select gender,sum(salary) Total_Salary from Employee where salary > 500
group by gender having sum(salary)>1000

-------------------------------------------------
select * from Employee

delete from Employee where not id in(select max(id)from Employee
group by name,gender,salary,department)
-------------------------------------------------------------------------------------------
select * from Employee
select max(salary) from  Employee
select min(salary) from  Employee
select sum(salary) from  Employee
select avg(salary) from  Employee
select count(salary) from  Employee

select * from Employee order by name desc
select * from Employee order by salary
select * from Employee order by salary desc

select top(2)* from Employee
select top(2)* from Employee order by id desc




select * from Employee

select min(salary)from
(select top(3)salary from Employee order by salary desc)ABC


select top(1)salary from
(select top(3)salary from Employee order by salary desc)ABC order by salary asc

-------------------------------------------------------------------------------------------
36.a.Database_query_18_march_21


create database batch11_16321
use batch11_16321
create table Employee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
department varchar(50)
)
insert into Employee(name,gender,salary,department)values('alok srivastava','male',400,'IT')
insert into Employee(name,gender,salary,department)values('rubina khan','female',800,'HR')
insert into Employee(name,gender,salary,department)values('Ashutosh kumar','male',300,'IT')
insert into Employee(name,gender,salary,department)values('pooja','female',500,'Sales')
insert into Employee(name,gender,salary,department)values('Biraj','male',700,'HR')
insert into Employee(name,gender,salary,department)values('chintu','female',600,'Sales')
insert into Employee(name,gender,salary,department)values('pp','other',450,'IT')
insert into Employee(name,gender,salary,department)values('kk','other',550,'HR')
insert into Employee(name,gender,salary,department)values('Dayanand','male',350,'Sales')
insert into Employee(name,gender,salary,department)values('Anwar','male',650,'HR')

select * from Employee

select gender,sum(salary) from Employee
group by gender

select gender,sum(salary)as Total_Salary from Employee
group by gender

select gender,sum(salary) Total_Salary from Employee
group by gender

select department,sum(salary) from Employee
group by department

select department,count(*) Total_Employee from Employee
group by department

select name,count(*) Total_Employee from Employee
group by name

---------------------------------------
select count(name),gender,sum(salary) Total_Salary from Employee
group by gender



select gender,sum(salary) Total_Salary from Employee where salary > 500
group by gender having sum(salary)>1000

-------------------------------------------------
select * from Employee

delete from Employee where not id in(select max(id)from Employee
group by name,gender,salary,department)
-------------------------------------------------------------------------------------------
select * from Employee
select max(salary) from  Employee
select min(salary) from  Employee
select sum(salary) from  Employee
select avg(salary) from  Employee
select count(salary) from  Employee

select * from Employee order by name desc
select * from Employee order by salary
select * from Employee order by salary desc

select top(2)* from Employee
select top(2)* from Employee order by id desc


select min(salary)from
(select top(3)salary from Employee order by salary desc)ABC


select top(1)salary from
(select top(3)salary from Employee order by salary desc)ABC order by salary asc

-------------------------------------------------------------------------------------------

update Employee set name=gender,gender=name

update Employee set gender=
case
when gender='male' then 'female'
when gender='female' then 'male'
end

update Employee set gender=
case
when gender='male' then 'female'
when gender='female' then 'male'
else gender
end


select ASCII('Z')
select CHAR(66)


declare @start int
set @start=65
while(@start < 91)
begin
	print char(@start)
	set @start=@start+1
end


create table Student
(
sid int primary key identity,
sname varchar(50),
salary int
)
select * from Employee
select * from Student

insert into Student select * from Employee -- RUN if both table structure are same
insert into Student(sname,salary) select name,salary from Employee
select * into Product from Employee
select * from kk
select * into kk from Employee where 1=2

----------------------------------------------------------------------------
select * from Employee
select * from Employee where name='alok'
select * from Employee where name like 'al%'
select * from Employee where name like 'a%'
select * from Employee where name like '%a'
select * from Employee where name like '_a%'
select * from Employee where name like '%a_'
select * from Employee where name like 'a%' or name like 'd%'
select * from Employee where name like '[a,d]%' 
select * from Employee where name like '[a-d]%' 
select * from Employee where name not like '[a,d]%' 
select * from Employee where name like '[^a,d]%' 

--WILD CARD OPERATOR
-----------------------------------------------------------------------------------
select * from sys.objects where type='U'
select * from sys.objects where type='P'
select * from sys.databases 
------------------------------------------------------------------------------
select GETDATE()

select DATEPART(DAY,GETDATE())
select DATEPART(YEAR,GETDATE())
select DATEPART(MONTH,GETDATE())

select DATENAME(DW,GETDATE())
select DATENAME(DW,'08-15-1947')

select DATEADD(DAY,5,GETDATE())
select DATEADD(YEAR,5,GETDATE())
select DATEADD(YEAR,-6,GETDATE())
SELECT * FROM TBL WHERE INSERTED_DATE BETWEEN  DATEADD(DAY,-6,GETDATE()) AND GETDATE()


SELECT DATEDIFF(YEAR,'08-15-1947',GETDATE())
SELECT DATEDIFF(YEAR,'09-08-1995',GETDATE())
SELECT DATEDIFF(DAY,'09-08-1995',GETDATE())
SELECT DATEDIFF(HOUR,'09-08-1995',GETDATE())
------------------------------------------------------------------------------
CREATE FUNCTION FN_1(@DOB DATE)
RETURNS INT
AS
BEGIN
	DECLARE @AGE INT
	SELECT @AGE=DATEDIFF(YEAR,@DOB,GETDATE())
	RETURN @AGE
END

SELECT DBO.FN_1('01-01-1991')

------------------------------------------------------------------------------------------------------------------------------------------------------------

37.a.Function_Temprary_table_20_03-21


create database batch11_16321
use batch11_16321
create table Employee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
department varchar(50)
)
insert into Employee(name,gender,salary,department)values('alok srivastava','male',400,'IT')
insert into Employee(name,gender,salary,department)values('rubina khan','female',800,'HR')
insert into Employee(name,gender,salary,department)values('Ashutosh kumar','male',300,'IT')
insert into Employee(name,gender,salary,department)values('pooja','female',500,'Sales')
insert into Employee(name,gender,salary,department)values('Biraj','male',700,'HR')
insert into Employee(name,gender,salary,department)values('chintu','female',600,'Sales')
insert into Employee(name,gender,salary,department)values('pp','other',450,'IT')
insert into Employee(name,gender,salary,department)values('kk','other',550,'HR')
insert into Employee(name,gender,salary,department)values('Dayanand','male',350,'Sales')
insert into Employee(name,gender,salary,department)values('Anwar','male',650,'HR')


alter table Employee add dob date
update Employee set gender=1 where id=1
update Employee set gender=1 where id=3
update Employee set gender=2 where id=4
update Employee set gender=3 where id=7
update Employee set gender=3 where id=8
update Employee set gender=1 where id=10
update Employee set gender=1 where id=11
update Employee set gender=2 where id=12
update Employee set gender=1 where id=13


-------------------------
CREATE FUNCTION FN_1(@DOB DATE)
RETURNS INT
AS
BEGIN
	DECLARE @AGE INT
	SELECT @AGE=DATEDIFF(YEAR,@DOB,GETDATE())
	RETURN @AGE
END

SELECT DBO.FN_1('01-01-1991')
alter proc sp_emp_get
as
begin
select id,name,dbo.FN_2(gender)Gender,salary,convert(varchar(50),dob,106)DateOfBirth,department,DBO.FN_1(dob)Age from Employee
end


-------------------------------------------------------

CREATE FUNCTION FN_2(@Gender int)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @GNAME VARCHAR(50)
		if(@Gender=1)
			begin
				set @GNAME='male'
			end
		else if(@Gender=2)
			begin
				set @GNAME='female'
			end
		else if(@Gender=3)
			begin
				set @GNAME='other'
			end
	RETURN @GNAME
END

--------------------------------------------------------------
alter table Employee alter column age varchar(50)
-----------------------------------------------------------
select * from Employee
select name,department from Employee
select (name+department)Detail from Employee
select (name+' '+department)Detail from Employee
select (name+space(5)+department)Detail from Employee
select (name+space(5)+department+space(5)+salary)Detail from Employee
select (name+space(5)+department+space(5)+convert(varchar(50),salary))Detail from Employee
select (name+space(5)+department+space(5)+cast(salary as varchar(50)))Detail from Employee


select convert(varchar(50),salary) from Employee 
select cast(salary as varchar(50)) from Employee 
select convert(int,name) from Employee 

select GETDATE()
select convert(varchar(50),GETDATE())
select cast(GETDATE()as varchar(50))
select convert(varchar(50),GETDATE(),106)
----------------------------------------------------------------------------
--------------------------------------------------------------------
create table #Student
(
id int primary key identity,
name varchar(50),
age int
)
select * from #student
insert into #student(name,age)values('alok',36)
insert into #student(name,age)values('Bhiraj',31)
insert into #student(name,age)values('vimlesh',32)


create table ##Stu
(
id int primary key identity,
name varchar(50),
age int
)
select * from ##stu
insert into ##stu(name,age)values('dayanand',36)
insert into ##stu(name,age)values('deepankar',31)
insert into ##stu(name,age)values('valmiki',32)

----------------------------------------------------------------------------------------------------------------------------------------

23-03-21 Monday Function and Procedure...




create database batch11_16321
use batch11_16321
create table Employee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
department varchar(50)
)
insert into Employee(name,gender,salary,department)values('alok srivastava','male',400,'IT')
insert into Employee(name,gender,salary,department)values('rubina khan','female',800,'HR')
insert into Employee(name,gender,salary,department)values('Ashutosh kumar','male',300,'IT')
insert into Employee(name,gender,salary,department)values('pooja','female',500,'Sales')
insert into Employee(name,gender,salary,department)values('Biraj','male',700,'HR')
insert into Employee(name,gender,salary,department)values('chintu','female',600,'Sales')
insert into Employee(name,gender,salary,department)values('pp','other',450,'IT')
insert into Employee(name,gender,salary,department)values('kk','other',550,'HR')
insert into Employee(name,gender,salary,department)values('Dayanand','male',350,'Sales')
insert into Employee(name,gender,salary,department)values('Anwar','male',650,'HR')


alter table Employee add dob date
update Employee set gender=1 where id=1
update Employee set gender=1 where id=3
update Employee set gender=2 where id=4
update Employee set gender=3 where id=7
update Employee set gender=3 where id=8
update Employee set gender=1 where id=10
update Employee set gender=1 where id=11
update Employee set gender=2 where id=12
update Employee set gender=1 where id=13


-------------------------
CREATE FUNCTION FN_1(@DOB DATE)
RETURNS INT
AS
BEGIN
	DECLARE @AGE INT
	SELECT @AGE=DATEDIFF(YEAR,@DOB,GETDATE())
	RETURN @AGE
END

SELECT DBO.FN_1('01-01-1991')
alter proc sp_emp_get
as
begin
select id,name,dbo.FN_2(gender)Gender,salary,convert(varchar(50),dob,106)DateOfBirth,department,DBO.FN_1(dob)Age from Employee
end


-------------------------------------------------------

CREATE FUNCTION FN_2(@Gender int)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @GNAME VARCHAR(50)
		if(@Gender=1)
			begin
				set @GNAME='male'
			end
		else if(@Gender=2)
			begin
				set @GNAME='female'
			end
		else if(@Gender=3)
			begin
				set @GNAME='other'
			end
	RETURN @GNAME
END

--------------------------------------------------------------
alter table Employee alter column age varchar(50)
-----------------------------------------------------------
select * from Employee
select name,department from Employee
select (name+department)Detail from Employee
select (name+' '+department)Detail from Employee
select (name+space(5)+department)Detail from Employee
select (name+space(5)+department+space(5)+salary)Detail from Employee
select (name+space(5)+department+space(5)+convert(varchar(50),salary))Detail from Employee
select (name+space(5)+department+space(5)+cast(salary as varchar(50)))Detail from Employee


select convert(varchar(50),salary) from Employee 
select cast(salary as varchar(50)) from Employee 
select convert(int,name) from Employee 

select GETDATE()
select convert(varchar(50),GETDATE())
select cast(GETDATE()as varchar(50))
select convert(varchar(50),GETDATE(),106)
----------------------------------------------------------------------------
--------------------------------------------------------------------
create table #Student
(
id int primary key identity,
name varchar(50),
age int
)
select * from #student
insert into #student(name,age)values('alok',36)
insert into #student(name,age)values('Bhiraj',31)
insert into #student(name,age)values('vimlesh',32)


create table ##Stu
(
id int primary key identity,
name varchar(50),
age int
)
select * from ##stu
insert into ##stu(name,age)values('dayanand',36)
insert into ##stu(name,age)values('deepankar',31)
insert into ##stu(name,age)values('valmiki',32)
---------------------------------------------------------------------------
select * from Employee
begin transaction
update Employee set name='Rohit' where id=8
commit transaction

--------------------------------------------------------------------
create table Items
(
itemid int primary key identity,
itemname varchar(50),
itemprice int,
itemqty int
)
insert into Items(itemname,itemprice,itemqty)values('LED',22000,500)
insert into Items(itemname,itemprice,itemqty)values('LAPTOP',30000,400)
insert into Items(itemname,itemprice,itemqty)values('Mobile',15000,700)

create table Sold
(
soldid int primary key identity,
itemid int,
qty int
)

alter proc sp_transaction
@itemid int,
@qty int
as
begin
	begin try
		begin transaction
		insert into Sold(itemid,qty)values(@itemid,@qty)
		update Items set itemqty=itemqty-@qty where itemid='pppp'
		commit transaction
		print 'TRANSACTION SUCCESSFULL !!!'
	end try

	begin catch
		rollback transaction
		print 'TRANSACTION FAILED !!!'
	end catch
	
end

exec sp_transaction 2,15
select * from Items
select * from Sold
----------------------------------------------------------------------
select * from Employee
create proc sp_salary_get
@id int
as
begin
	select salary from Employee where id=@id
end

exec sp_salary_get 4
-------------------------------------------------
create proc sp_salaryy_get
@id int
as
begin
	declare @p int
	select @p=salary from Employee where id=@id
	return @p
end

declare @k int
exec @k=sp_salaryy_get 4
print @k
-------------------------------------------------------
create proc sp_name_get  --- error
@id int
as
begin
	declare @p varchar(50)
	select @p=name from Employee where id=@id
	return @p
end

declare @k varchar(50)
exec @k=sp_name_get 4
print @k

-----------------------------------------------
create procedure sp_namee_get 
@id int,
@m varchar(50) out
as
begin
	select @m=name from Employee where id=@id
end

declare @k varchar(50)
exec sp_namee_get 4,@k output
print @k

---------------------------------------------------------------------------------------------------------------------------------------

----EXTRA CONCEPTS -- DURING LEARNING

create database DB_JOIN_04102023
use DB_JOIN_04102023
---lecture No 21

create table Employee
(
empid int  primary key identity,
name varchar(100),
country int
)
-- Changing varchar of Country column
alter table Employee alter column country varchar(100)
-- Changing Type varchar of Country column
alter table Employee alter column country varchar(100)
alter table Employee alter column country varchar(100)
alter table Employee alter column country int

create table tblCountry
(
cid int primary key identity,
cname varchar(100)
)

insert into Employee(name,country)values('Fahad','1')
insert into Employee(name,country)values('Hamza','2')
insert into Employee(name,country)values('Ali','3')
insert into Employee(name,country)values('Faraz','4')
insert into Employee(name,country)values('Almas','5')
insert into Employee(name,country)values('Aman','6')
insert into Employee(name,country)values('Abhishek',8)


insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('USA')
insert into tblCountry(cname)values('Canada')
insert into tblCountry(cname)values('Russia')
insert into tblCountry(cname)values('UAE')
insert into tblCountry(cname)values('Egypt')

select * from Employee
select * from tblCountry

select * from Employee join tblCountry on Employee.country=tblCountry.cid
----------------------------------------------------------------------
select empid,name,cname from Employee join tblCountry on Employee.country=tblCountry.cid
----
--create table Employee_2
--(
--empid int  primary key identity,
--empid1 int primary key identity,
--name varchar(100),
--country int  
--)
-- In one table only 1 pK and identity is allowed.
-----------------------------------------------------------------------

create table tblCountry_3
(
cid int   primary key identity(1,2),
cname varchar(100)
)
insert into tblCountry_3(cname)values('India')
insert into tblCountry_3(cname)values('Pakistan')
insert into tblCountry_3(cname)values('USA')
insert into tblCountry_3(cname)values('Canada')
insert into tblCountry_3(cname)values('Russia')
insert into tblCountry_3(cname)values('UAE')
insert into tblCountry_3(cname)values('Egypt')


select * from tblCountry_3
drop table tblCountry_3
---------------------------------------------------------------------------



--------------------------------------------
create table tblCountry_2
(
cid varchar(100) primary key ,
cname varchar(100)
)



--insert into tblCountry_2(cid,cname)values(1123,'India')
--insert into tblCountry_2(cid,cname)values('1123','Pakistan')
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
--insert into tblCountry_2(cid,cname)values('10','Canada')
--insert into tblCountry_2(cid,cname)values('10','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('11HH','USA')
--insert into tblCountry_2(cid,cname)values('10XX','Canada')
--insert into tblCountry_2(cid,cname)values('10XX','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('','UAE')
--insert into tblCountry_2(cid,cname)values('','Egypt') -- duplicate
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
insert into tblCountry_2(cid,cname)values('0','Canada')
--insert into tblCountry_2(cid,cname)values('null','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
--insert into tblCountry_2(cid,cname)values('  ','Canada')
--insert into tblCountry_2(cid,cname)values('NULL','Russia') -- duplicate

select * from TblCountry_2
--------------------------------------------------------------

--learning on 19 april 23
-- lecture No 22

create table tblEmployee
(
id int primary key identity,
name varchar(50),
salary int,
countryid int,
status int default 0,
inserted_date date
) 

drop table tblEmployee

insert into tblEmployee(name,salary,countryid,inserted_date)values('alok',500,3,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Arvind',700,1,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Shubhanshi',900,1,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Sweta',300,2,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Hitesh',800,2,GETDATE())
insert into tblEmployee(name,salary,countryid,inserted_date)values('Deepak',500,3,GETDATE())

create table Country
(
cid int primary key identity,
cname varchar(50)
)

insert into Country(cname)values('India')
insert into Country(cname)values('Pakistan')
insert into Country(cname)values('Japan')
------------------------------------------------------
-- JOIN
select * from tblEmployee
select * from Country

select * from tblEmployee join Country on tblEmployee.countryid=Country.cid
select * from tblEmployee join Country on tblEmployee.countryid=Country.cid
select * from tblEmployee join Country on  Country.cid = Employee.countryid
select * from tblEmployee join Country on Country.cid = tblEmployee.countryid

select * from tblEmployee inner join Country on Country.cid = tblEmployee.countryid
select * from Country join tblEmployee on Country.cid = tblEmployee.countryid -- it means jo table pahle rahegi join se us table ka record pahle aaega output me

select * from Country inner join tblEmployee on Country.cid = tblEmployee.countryid

select * from tblEmployee inner join Country on  tblEmployee.countryid =Country.cid 
--------Both above join query are same. means give same output
------------------------------------------------------------------------------------------
select * from Country join tblEmployee on tblEmployee.countryid = country.cid -- it gives country table on left
select * from Country join tblEmployee on Country.cid = tblEmployee.countryid -- it gives country table on left
select * from Country inner join tblEmployee on tblEmployee.countryid = country.cid -- it gives country table on left
select * from Country inner join tblEmployee on Country.cid = tblEmployee.countryid   -- it gives country table on left
--------Both above join query are same. means give same output
--NOTE :- If we change type of Countryid column then no affect happen in join.
--eg:
 alter table tblEmployee alter column countryid varchar(100) -- change type from int to varchar
 alter table tblEmployee alter column countryid int
--------------------------------------------------------------------------------------------------


select id,name,salary,cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
-- this query gives selected column from Joined table....
---------------------------------------------------------------------------------------
select id as EmpID,name As EmpName,salary EmpSalary from tblEmployee -- aliasing
select id,name,* from tblEmployee -- this query gives selected column + all table record due to *
--------------------------------------------------------------

select id,name,salary,cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
select tblEmployee.id,tblEmployee.name,tblEmployee.salary,Country.cname from tblEmployee join Country on tblEmployee.countryid=Country.cid
-----Both above query gives same output.........


---ALIASING------

---THIS CONCEPT CALLLED ALIASING IN DATABSE WHICH IS MOST MOST IMPORTANT PART OF DB.
select tblEmployee.id,tblEmployee.name as EmployeeName,tblEmployee.salary,Country.cname as CountryName from tblEmployee join Country on tblEmployee.countryid=Country.cid

select tblEmployee.id EmployeeID,tblEmployee.name as EmployeeName from tblEmployee
--- LWH
select Employee.id,Employee.name as EmployeeName from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name as EmployeeID,EmployeeName from Employee -- this is not possile ... Why..?
select Employee.id,Employee.name from Employee

select Employee.id as EmployeeID from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName from Employee 

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary, Country.cid as CountryID, Country.cname as CountryName from Employee join Country on Employee.Countryid= Country.cid

-------------------------------------------------------Aliasing me aur kya hai pata nahi------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------JOIN-----------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN


-- INNER JOIN

--JOIN kaho ya INNER JOIN Both are same........... Inner keyword has no significance
select * from Employee inner join Country on Employee.countryid=Country.cid  -- Inner is optional, Kahani hai, only concept hai theory waala kuch written me nahi hai
select * from Employee join Country on Employee.countryid= Country.cid

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


select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same outp


--1. LEFT OUTER JOIN
select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same output

------------------------------------------------------------------------------------------------------------------------------------------------------


-- 2. RIGHT JOIN


select * from Employee left join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid

--2. RIGHT OUTER JOIN   -- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai


select * from Employee left join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid

--------------------------------------------------------------------------------------------------------------------------
--3.	FULL JOIN

select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee full outer join Country on Employee.countryid=Country.cid

select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee inner join Country on Employee.countryid= Country.cid




--3.	FULL  OUTER JOIN

select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee full outer join Country on Employee.countryid=Country.cid

select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee inner join Country on Employee.countryid= Country.cid

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--3. CROSS JOIN 
select * from Employee cross join Country -- gives total combinations of id
-- like meployee table has 7 unique records and Country table has 3 unique records  so total possible condition will be 7*3 = 21


------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee cross join Country 
------------------------------------------------------------
--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN




--11 jan 21 join 3rd


-------------------------------------------------------------------------------------------------------------------------------------------------------
create database DB_L35_04122023
use DB_L35_04122023

create table Employee
(
empid int primary key identity,
name varchar(100),
gender varchar(100),
salary int,
department varchar(50),
)

insert into Employee(name,gender,salary,department)values('Fahad','Male',23000,'IT')
insert into Employee(name,gender,salary,department)values('ALi','Male',29000,'Sales')
insert into Employee(name,gender,salary,department)values('Hamza','Male',29800,'R&D')
insert into Employee(name,gender,salary,department)values('Abdul','Male',27600,'BPO')
insert into Employee(name,gender,salary,department)values('Zainab','Female',20000,'ADM')
insert into Employee(name,gender,salary,department)values('Suraj','Male',25400,'IT')
insert into Employee(name,gender,salary,department)values('Chandan','Male',27600,'ADM')
insert into Employee(name,gender,salary,department)values('Fatima','Female',27800,'Sales')
insert into Employee(name,gender,salary,department)values('Zikra','Female',21200,'R&D')
insert into Employee(name,gender,salary,department)values('Sania','Female',23000,'IT')
insert into Employee(name,gender,salary,department)values('Abc','Other',90800,'Sales')
insert into Employee(name,gender,salary,department)values('pqr','Other',98200,'R&D')
insert into Employee(name,gender,salary,department)values('xyz','Other',29700,'IT')


select * from Employee

truncate table Employee

--- Group by command and Sum function-------------

select name,salary,gender from Employee
select sum(salary) from Employee -- salary sum query using SUM() Function.

select sum(salary) from Employee where empid in (4,5)

select sum(salary)  from Employee
group by gender

select sum(salary)as GenderWiseSalarySum  from Employee
group by gender
select sum(salary)  Genderwise from Employee group by gender



select sum(salary) as Total_Salary from Employee  -- aliasing --  table name is optional
group by gender

select sum(salary) Total_Salary from Employee group by gender  -- here AS is optional  -- as is optional
select gender, sum(salary) Total_Salary from Employee group by gender

select department, sum(salary) from Employee group by department
select department, sum(salary) as Total_Salary_Department from Employee group by department

select department, sum(salary) Total_salary from Employee group by department

-- person count using Count function

select gender, count(*) from Employee group by gender

select gender EmployeeGender , count(*) from Employee group by gender
select gender EmployeeGender, count(*) as Total_Employee from Employee group by gender

select gender EmployeeGender , count(*)  Total_Employee from employee group by gender

select department EmpDepartment, count(*) Total_EMployee from employee group by department

select department as EmpDepartment , count(*) as Total_Employee from Employee group by department

select department as EmpDeptmnt, count(1) as Total_Emp from EMployee group by department

select department as EmpDepartment , count(2) as Total_EMp from Employee group by department

select department as EmpDepartment , count(*) as Total_EMp from Employee group by department


select gender as EMpGender , count(*) as Genderwise from EMployee group by gender
select department as EmpDepartment  , count(*) departmntwise From EMployee group by department



-------------------------------------------------------------------------------------------------
-- Rule of group by 
--Jab hum group by lagaenge tab only 2 type ke column  ko hi select kar sakenge
--1. Jo column  pe group by laga ho
--2. Jo column kisi aggregate function ke andar ho

-- eg --  
select gender,  sum(salary) as Total_Salary from EMployee group by gender
select * from EMployee

select department as EmpDepartment , count(*) as Total_EMp from Employee group by department
select department, count(*), gender, sum(salary) as Total_Salary from Employee group by gender, department
select  gender as EmpGender from Employee group by gender

select count(name) as Total_Emp,count(department), gender, sum(salary) as Total_Salary from Employee group by gender

select department as DepartmntName, count(department) as Total_Emp , SUM(salary) Total_Salary from Employee group by department
select gender as Emp_Gender , count(gender) as Total_gender ,sum(salary) as Total_Salary from Employee group by gender
--------

select department, gender as Emp_Gender , count(gender) as Total_gender ,sum(salary) as Total_Salary from Employee group by gender, department

select gender,department  from Employee group by department,gender
----------------------------------------------------------------------------------------------------------------------------------------------------------------

--Difference in  Where and Having 

-- having is used to make condition on table and group-- in short without group there is no having
-- means agar group by nahi hai to having bhi nahi hoga kyo ki having to condition group pe lagata hai.
-- Where is used to put condition on table -- In short without table there is no where
select * from Employee

select gender as Emp_Gender , count(gender) as Total_gender ,sum(salary) as Total_Salary
from Employee where salary>27000 
group by gender 


select gender as Emp_Gender , count(gender) as Total_gender ,sum(salary) as Total_Salary
from Employee where salary>27000 
group by gender having sum(salary)>100000

----------------------------------------------------------------------------------------------
-- How to remove duplicate record
delete from Employee where not empid  in (select max(empid) from Employee group by name,gender,salary,department)

delete from Employee where  empid not in (select max(empid) from Employee group by name,gender,salary,department)

delete from Employee where empid not in (select min(empid) from Employee group by name,gender,salary,department)
select min(empid) from Employee group by  name,gender,salary,department

select * from Employee
delete from employee where empid  in (28,29)
delete from employee where empid in (select * from Employee)
--------------------------------------------------------------------------------------------------------------------
-- Agregate funsctions
select * from Employee
select sum(salary) as Total_salary from Employee
select max(salary) as Max_Salary from Employee
select min(salary) as Min_Salary from employee
select avg(salary) as Avg_Salary from Employee
select COUNT(salary) as No_Of_Salary from Employee

--------------------------------------------------------------------------------------------
-- Alphabetical order means Ascending order me column ke records ko dekhna
-- Everything is in ascending order by default and we can make in deccending order as well
-- by default table ka record id ke basis pe hota hai kyo ki wo primary key hoti hai

select * from Employee order by name 
select * from Employee order by name  desc

select * from Employee order by salary
select * from Employee order by department
select * from Employee order by salary desc

select name from Employee order by name
select name as EmpName from Employee order by name

-------------------------------------------------------------------------------------------
-- How to know anything about nothing  by using top keyword.. means without 
-- knowing anything about table how we can find top data of table

select  top(2) * from Employee
-- Bottom se
select * from Employee order by empid desc
select top(2) *  from Employee order by empid desc

---------------------------------------------------------------------------------------------
-- How to find third highest salary
-- with aggregate function
-- without aggregate function


-- There are 4 types of table also--
-- 1. Permanent, Derived, Magic, temporary
-- with aggregate functionn by using derived table
select min(salary) as Third_Highest_Salary from
(select  top(3) salary from Employee order by salary desc)ABC  -- This ABC table is called derived table because we assume it not create it so we can apply only some limited function on it.

-- without using aggregate functions
select * from
(select top(3) salary from Employee order by salary desc) Derived_table order by salary asc  -- Derived table is in descending order


-- Third Highest salary without using aggregate function.

select top(1) salary as Third_Highest_Salary from
(select top(3) salary from Employee order by salary desc) Derived_table order by salary asc

select top(1) salary from 
(select top(3) salary from Employee order by salary desc) ABC order by salary asc

------------------------------------------------------------------------------------------------------------

create database JOIN_04122023
use JOIN_04122023
-- lecture No 22

create table Employee
(
id int primary key identity,
name varchar(50) not null,
salary int not null,
countryid int
) 
drop table Employee
insert into Employee(name,salary,countryid)values('alok',500,3)
insert into Employee(name,salary,countryid)values('',700,1)
insert into Employee(name,salary,countryid)values('',900,1)
insert into Employee(name,salary,countryid)values('Sweta',null,2)-- we can't inser null keyword in column in anyway
insert into Employee(name,salary,countryid)values('Hitesh',null,2)
insert into Employee(name,salary,countryid)values('Deepak',500,3)

insert into Employee(name,salary,countryid)values('alok',500,3)
insert into Employee(name,salary,countryid)values('ali',700,1)
insert into Employee(name,salary,countryid)values('hamza',900,1)
insert into Employee(name,salary,countryid)values('Sweta',890,2)
insert into Employee(name,salary,countryid)values('Hitesh',200,2)
insert into Employee(name,salary,countryid)values('Deepak',500,3)

select * from Employee

create table Country
(
cid int primary key identity,
cname varchar(50)
)

insert into Country(cname)values('India')
insert into Country(cname)values('Pakistan')
insert into Country(cname)values('Japan')
------------------------------------------------------
-- JOIN
select * from Employee
select * from Country

select * from Employee join Country on Employee.countryid=Country.cid
select * from Employee join Country on  Country.cid = Employee.countryid

select * from Country join Employee  on Employee.countryid=Country.cid -- jis table ko pahle rakhenge usi table ka record pahle aaega
select * from Country join Employee  on  Country.cid = Employee.countryid

select * from Employee inner join Country on Country.cid = Employee.countryid
select * from Employee inner join Country on  Employee.countryid =Country.cid 
--------Both above join query are same. means give same output
------------------------------------------------------------------------------------------
select * from Country join Employee on Employee.countryid = country.cid -- it gives country table on left
select * from Country join Employee on Country.cid = Employee.countryid
select * from Country inner join Employee on Employee.countryid = country.cid -- it gives country table on left
select * from Country inner join Employee on Country.cid = Employee.countryid  
--------Both above join query are same. means give same output
--NOTE :- If we change type of Countryid column then no affect happen in join.
--------------------------------------------------------------------------------------------------


select id,name,salary,cname from Employee join Country on Employee.countryid=Country.cid
-- this query gives selected column from Joined table....
---------------------------------------------------------------------------------------
select id,name,salary from Employee
select id,name from Employee -- this query gives selected column
--------------------------------------------------------------

select id,name,salary,cname from Employee join Country on Employee.countryid=Country.cid
select Employee.id,Employee.name,Employee.salary,Country.cname from Employee join Country on Employee.countryid=Country.cid
-----Both above query gives same output but not sure what is reason behind that.........

select id,name,salary,cname,* from Employee join Country on Employee.countryid=Country.cid where salary <> 500

---ALIASING------

---THIS CONCEPT CALLLED ALIASING IN DATABSE WHICH IS MOST MOST IMPORTANT PART OF DB.
select Employee.id,Employee.name as EmployeeName,Employee.salary,Country.cname as CountryName from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name as EmployeeName from Employee
select Employee.id,Employee.name as EmployeeName from Employee join Country on Employee.countryid=Country.cid

select Employee.id,Employee.name as EmployeeID,EmployeeName from Employee -- this is not possile ... Why..?
select Employee.id,Employee.name as EmployeeID from Employee -- this is not possile ... Why..?

select Employee.id,Employee.name from Employee

select Employee.id as EmployeeID from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName from Employee 

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary from Employee

select Employee.id as EmployeeID, Employee.name as EmployeeName, Employee.salary as EmployeeSalary, Country.cid as CountryID, Country.cname as CountryName from Employee join Country on Employee.Countryid= Country.cid
select id as EmpId,name EmpName,salary ESalary from Employee 
-------------------------------------------------------Aliasing me aur kya hai pata nahi------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------JOIN-----------------------------------------------------------------------------

--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN


-- INNER JOIN

--JOIN kaho ya INNER JOIN Both are same........... Inner keyword has no significance
select * from Employee inner join Country on Employee.countryid=Country.cid  -- Inner is optional, Kahani hai, only concept hai theory waala kuch written me nahi hai
select * from Employee join Country on Employee.countryid= Country.cid

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


select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same outp


--1. LEFT OUTER JOIN
select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
-- JOIN,LEFT JOIN , LEFT OUTER JOIN all are same gives same output

------------------------------------------------------------------------------------------------------------------------------------------------------


-- 2. RIGHT JOIN


select * from Employee left join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid

--2. RIGHT OUTER JOIN   -- OUTER is optional, Kahani hai, only concept hai theory waala, kuch written me nahi hai


select * from Employee left join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid

--------------------------------------------------------------------------------------------------------------------------
--3.	FULL JOIN

select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee full outer join Country on Employee.countryid=Country.cid

select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee inner join Country on Employee.countryid= Country.cid




--3.	FULL  OUTER JOIN

select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee full outer join Country on Employee.countryid=Country.cid

select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee left outer join Country on Employee.countryid=Country.cid

select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee right outer join Country on Employee.countryid=Country.cid

select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee inner join Country on Employee.countryid= Country.cid

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
--3. CROSS JOIN 
select * from Employee cross join Country -- gives total combinations of id
-- like employee table has 6 unique records and Country table has 3 unique records  so total possible condition will be 6*3 = 18
select * from Country

------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from Employee join Country on Employee.countryid= Country.cid
select * from Employee left join Country on Employee.countryid=Country.cid
select * from Employee right join Country on Employee.countryid=Country.cid
select * from Employee full join Country on Employee.countryid=Country.cid
select * from Employee cross join Country 
------------------------------------------------------------
--JOIN
--1) INNER JOIN (JOIN)
--2) OUTER JOIN  ---- a) LEFT JOIN b) RIGHT JOIN c) FULL JOIN
--3) CROSS JOIN




--11 jan 21 join 3rd

-----------------------------------------------------------------------------------------------------------------------------------------









