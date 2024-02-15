Create database DB_Lecture_4_Advnd
use DB_Lecture_4_Advnd

--36.a.Database_query_18_march_21



create table Employee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
department varchar(50),
inserted_date date default getdate(),
status int default 0
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


drop table Employee
select * from Employee
----------execute only create table till this. last learn on - 15/01/24

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

select count(name) TotalEmployee_Genderwise, gender, sum(salary) Total_Salary from Employee group by gender


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

update Employee set name=gender , gender = name

select * from Employee

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


update Employee set gender=
case
when gender='male' then 'female'
when gender='female' then 'male'
else gender
end

select ASCII('Z')
select CHAR(66)


select ASCII('?')
select ASCII('a')

select char(98)

-- print abcd from a to z
declare @start int
set @start=65
while(@start < 91)
begin
	print char(@start)
	set @start=@start+1
end

declare @start1 int
set @start1 = 65
while(@start1 < 91)
begin
	print char(@start1)
	set @start1 = @start1 +1
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

insert into student(sname,salary) select name,salary from Employee -- only column type matter--not column name

select * into Product_1 from Employee
select * from Product_1, Employee

select * into Worker from  Employee where 1=2 -- universal jhoot bolna hai where condition me
select * from Worker


----------------------------------------------------------------------------
select * from Employee
select * from Employee where name='alok'
select * from Employee where name like 'al%' -- % means kuch bhi 
select * from Employee where name like 'a%'
select * from Employee where name like '%a'
select * from Employee where name like '_a%' -- _ means kuch bhi
select * from Employee where name like '%a_' -- last se doosra a ho
select * from Employee where name like 'a%' or name like 'd%'
select * from Employee where name like '[a,d]%' 
select * from Employee where name like '[a-d]%' 
select * from Employee where name not like '[a,d]%' 
select * from Employee where name like '[^a,d]%' --

--WILD CARD OPERATOR

select * from Employee where name like '[a-d]%'
select * from Employee where name like '[a,b,c,d]%' -- both are same

select * from Employee where name not like '[a,d]%' 
select * from Employee where name like '[^a,d]%' -- Not ka symbol ^

--Operator used with like command are called wildcard operator

-----------------------------------------------------------------------------------
select * from sys.objects where type='U' -- U -- user define table -- is used to find no of table with name in our database
select * from sys.objects where type='P' -- U -- user define procedure -- is used to find no of procedure with name in our table
select * from sys.databases 
select * from sys.objects where type='PK'
select * from sys.objects where type='F'
------------------------------------------------------------------------------


select GETDATE()-- returns date time

select @@DATEFIRST

select DATEPART(DAY,GETDATE())
select DATEPART(YEAR,GETDATE())
select DATEPART(MONTH,GETDATE())

select DATEPART(DAY, GETDATE())  -- returns only day
select DATEPART(YEAR, GETDATE())-- returns only year
select DATEPART(MONTH, GETDATE()) -- returns only month

select DATENAME(DW,GETDATE())
select DATENAME(DW,'08-15-1947')

select DATENAME(DW, GETDATE()) -- returns today day -- Thursday
select DATENAME(DW, '08-15-1947') -- FRIDAY


select DATENAME(DW, '09-06-1999')-- Monday
select DATENAME(DW, '12-29-1998') -- Tuesday
select DATENAME(DAY, '12-29-1998') -- 29
select DATENAME(DD, '12-29-1998')--29
select DATENAME(DAYOFYEAR, '12-29-1998')-- 363 -- uss year ka kaun sa day tha

select DATENAME(DAYOFYEAR, '06-09-1998')-- 160



select DATEFROMPARTS(2018, 10, 31)--2018-10-31

select DATEADD(DAY,5,GETDATE())
select DATEADD(YEAR,5,GETDATE())
select DATEADD(YEAR,-6,GETDATE())

select DATEADD(DAY, 5, GETDATE())

select DATEADD(YEAR, 5, GETDATE())



SELECT * FROM Employee WHERE inserted_date BETWEEN  DATEADD(DAY,-6,GETDATE()) AND GETDATE()


SELECT * FROM Employee WHERE inserted_date BETWEEN  DATEADD(DAY,-6,GETDATE()) AND '08-15-1947'-- it is used to find record between this date

select * from Employee where inserted_date between '08-15-1947' AND '08-15-1947'


select * from Employee where inserted_date between  GETDATE() AND '08-15-1947'


select * from Employee where inserted_date between '08-15-1947' AND GETDATE() -- it is used to find record from date A('08-15-1947')  to date B (GETDATE())


select * from EMployee where inserted_date between DATEADD(YEAR, -80, GETDATE()) and GETDATE()

select * from EMployee where inserted_date between DATEADD(YEAR, -800, GETDATE()) and GETDATE()-- Adding a value to a 'datetime' column caused an overflow.


select gender EMP_gender, sum(salary) as Total_salary  from employee  where inserted_date between DATEADD(YEAR, -2, GETDATE()) and GETDATE() group by gender  



SELECT DATEDIFF(YEAR,'08-15-1947',GETDATE())
SELECT DATEDIFF(YEAR,'09-08-1995',GETDATE())
SELECT DATEDIFF(DAY,'09-08-1995',GETDATE())
SELECT DATEDIFF(HOUR,'09-08-1995',GETDATE())

select DATEDIFF(YEAR,'08-15-1947', GETDATE())--1947

select DATEDIFF(YEAR,'08-15-1947', '08-15-2024')-- 77 years

select DATEDIFF(YEAR, '01-26-1950', '01-26-2024') -- 74

select DATEDIFF(YEAR, '09-06-1999', GETDATE())-- 25 years

select DATEDIFF(YEAR, '12-29-1998', GETDATE())-- 26 years -- it exclude 1 year either starting year or last year

select DATEDIFF(YEAR,'12-29-1998', '01-18-2024')-- 26


select DATEDIFF(DAY,'12-29-1998', '01-18-2024')-- 9151 days


select DATEDIFF(HOUR,'12-29-1998', '01-18-2024')--219624 hrs 


select DATEDIFF(DAYOFYEAR,'12-29-1998', '01-18-2024')--9151 days 


select DATEDIFF(WEEKDAY,'12-29-1998', '01-18-2024')--9151 weekdays 

select DATEDIFF(MINUTE,'12-29-1998', '01-18-2024') -- 13177440 minutes

select DATEDIFF(SECOND,'12-29-1998', '01-18-2024') -- 790646400 seconds

select datediff (MICROSECOND,'12-29-1998', '01-18-2024') --

select DATEDIFF(MILLISECOND,'12-29-1998', '01-18-2024')


select DATEDIFF(NANOSECOND,'12-29-1998', '01-18-2024') -- overflow error due  to very large date difference



select DATEDIFF(NANOSECOND, '12-29-1998', '01-18-2024')

SELECT SYSDATETIME() AS SysDateTime; -- 2024-01-18 23:12:32.5898588


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

-- how to create function in sql

create function functioname(@dob date)
returns int
as
begin
	declare @age int
	select @age = datediff(year,@dob, getdate())
	return @age
end

drop  function functioname

select dbo.functioname('09-06-1999')

create function  agecalculator(@dob date)
returns int
as
begin
	declare @age int
	select @age = datediff(YEAR, @dob, GETDATE())
	return @age
end

select dbo.agecalculator('09-06-1999')


create function dobcalculator(@dob date)
returns int

as
begin
	--declare @age int
	--declare @month int
	declare @days int

	--select @age = DATEDIFF(YEAR, @dob, GETDATE())
	--select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	--return @age
	--return @month
	return @days
end


create function dobcalculator_days(@dob date)
returns int

as
begin
	--declare @age int
	--declare @month int
	declare @days int

	--select @age = DATEDIFF(YEAR, @dob, GETDATE())
	--select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	--return @age
	--return @month
	return @days
end

select dbo.dobcalculator_days('09-06-1999')-- 8900 days

select  DATEDIFF(DAY,'09-06-1999' , GETDATE())-- 8900 days

select  DATEDIFF(MONTH,'09-06-1999' , GETDATE())

SELECT 'W3Schools' + '.com';-- W3Schools.com

SELECT CONCAT('W3Schools', '.com');-- W3Schools.com

select  CONCAT(DATEDIFF(DAY,'09-06-1999' , GETDATE()))


create function dobcalculator_d(@dob date)
returns int

as
begin
	declare @age int
	declare @month int
	declare @days int
	declare @dat int

	select @age = DATEDIFF(YEAR, @dob, GETDATE())
	select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	select @dat =  CONCAT_WS (@age, @month,@days)
	return @dat
end



create function dobcalculator_d1(@dob date)
returns int

as
begin
	declare @age int
	declare @month int
	declare @days int
	declare @dat int

	select @age = DATEDIFF(YEAR, @dob, GETDATE())
	select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	select @dat =  CONCAT_WS('-',@age, @month,@days)
	return @dat
end


create function dobcalculator_d2(@dob date)
returns int

as
begin
	declare @age int
	declare @month int
	declare @days int
	declare @dat int

	select @age = DATEDIFF(YEAR, @dob, GETDATE())
	select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	select @dat =  CONCAT_WS('-',@age, @month,@days)
	return @dat
end


create function dobcalculator_d3(@dob date)
returns varchar(100)

as
begin
	declare @age varchar(100)
	declare @month varchar(100)
	declare @days varchar(100)
	declare @dat varchar(100)

	select @age = DATEDIFF(YEAR, @dob, GETDATE())
	select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	select @dat =  CONCAT_WS('-',@age, @month,@days)
	return @dat
end



create function dobcalculator_d4(@dob date)
returns varchar(100)

as
begin
	declare @age varchar(100)
	declare @month varchar(100)
	declare @days varchar(100)
	declare @dat varchar(100)

	select @age = DATEDIFF(YEAR, @dob, GETDATE())
	select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	select @dat =  CONCAT_WS('-',@age, @month,@days)
	return @dat
end



create function dobcalculator_d5(@dob date)
returns varchar(100)

as
begin
	declare @age varchar(100)
	declare @month varchar(100)
	declare @days varchar(100)
	declare @dat varchar(100)

	select @age = DATEDIFF(YEAR, @dob, GETDATE())
	select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	select @dat =  CONCAT_WS('-',@age,'years', @month,'months',@days,'days')
	return @dat
end

select dbo.dobcalculator_d5('09-06-1999')

create function dobcalculator_d6(@dob date)
returns varchar(100)

as
begin
	declare @age varchar(100)
	declare @month varchar(100)
	declare @days varchar(100)
	declare @dat varchar(100)

	select @age = DATEDIFF(YEAR, @dob, GETDATE())
	select @month = DATEDIFF(MONTH, @dob, GETDATE())
	select @days = DATEDIFF(DAY, @dob, GETDATE())

	select @dat =  CONCAT_WS(@age,'years', @month,'months',@days,'days')
	return @dat
end


select   CONCAT_WS(25,'years', 78,'months',908,'days')

SELECT CONCAT_WS('.', 'www', 'W3Schools', 'com');

select dbo.dobcalculator_d6('09-06-1999')
