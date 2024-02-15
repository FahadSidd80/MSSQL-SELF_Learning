--36.a.Database_query_18_march_21


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