
--37.a.Function_Temprary_table_20_03-21


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