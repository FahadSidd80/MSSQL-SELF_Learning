Create database DB_Lect_5_Advnce_Pr

use DB_Lect_5_Advnce_Pr

--37.a.Function_Temprary_table_20_03-21


create table Employee
(
id int primary key identity,
name varchar(50),
gender int,
salary int,
department varchar(50),
dob date
)
insert into Employee(name,gender,salary,department)values('alok srivastava',1,400,'IT')
insert into Employee(name,gender,salary,department)values('rubina khan',2,800,'HR')
insert into Employee(name,gender,salary,department)values('Ashutosh kumar',1,300,'IT')
insert into Employee(name,gender,salary,department)values('pooja',2,500,'Sales')
insert into Employee(name,gender,salary,department)values('Biraj',1,700,'HR')
insert into Employee(name,gender,salary,department)values('chintu',2,600,'Sales')
insert into Employee(name,gender,salary,department)values('pp',3,450,'IT')
insert into Employee(name,gender,salary,department)values('kk',3,550,'HR')
insert into Employee(name,gender,salary,department)values('Dayanand',1,350,'Sales')
insert into Employee(name,gender,salary,department)values('Anwar',1,650,'HR')


alter table Employee add dob date
alter table employee add dob date

update Employee set gender=1 where id=1
update Employee set gender=1 where id=3
update Employee set gender=2 where id=4
update Employee set gender=3 where id=7
update Employee set gender=3 where id=8
update Employee set gender=1 where id=10
update Employee set gender=1 where id=11
update Employee set gender=2 where id=12
update Employee set gender=1 where id=13


update Employee set dob = '09-06-1999' where id=1
update Employee set dob = '01-06-1998' where id=2
update Employee set dob = '04-06-1995' where id=3
update Employee set dob = '06-12-1953' where id=4
update Employee set dob = '10-12-1991' where id=5
update Employee set dob = '09-08-1969' where id=6
update Employee set dob = '06-07-1990' where id=7
update Employee set dob = '03-02-1974' where id=8
update Employee set dob = '03-04-1966' where id=9
update Employee set dob = '08-09-1957' where id=10

select * from Employee
-------------------------

CREATE FUNCTION FN_1(@DOB DATE)
RETURNS INT
AS
BEGIN
	DECLARE @AGE INT
	SELECT @AGE=DATEDIFF(YEAR,@DOB,GETDATE())
	RETURN @AGE
END

create function DOB_1(@dob date) -- age jaane waala function
returns int
as
begin
	declare @age int
	select @age= DATEDIFF(YEAR,@dob,GETDATE())
	return @age
end


SELECT DBO.DOB_1('03-04-1966')



alter proc sp_emp_get
as
begin
select id,name,dbo.FN_2(gender)Gender,salary,convert(varchar(50),dob,106)DateOfBirth,department,DBO.FN_1(dob)Age from Employee
end


select id,name,gender,salary,department,DBO.DOB_1(dob) from Employee

-- we can't write any procedure in select statement. 

alter proc sp_get_emp
as
begin
select id,name,CONVERT(varchar(50),dob,106) DateOfBirth,dbo.gender_1(gender) gender,salary,department,DBO.DOB_1(dob) Age from Employee
end

exec sp_get_emp

create function gender_1(@gender int)
returns varchar(50)
as
begin
	declare @gname varchar(50)
		if(@gender = 1)
		begin
		set @gname='Male'
		end
		else if(@gender = 2)
		begin
		set @gname='Female'
		end
		else if(@gender = 3)
		begin
		set @gname='Other'
		end
	return @gname 
end

--DBO - database object 
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
alter table EMployee alter column age varchar(50)
-----------------------------------------------------------
select * from Employee
select name,department from Employee
select (name+department)Detail from Employee
select (name+' '+department)Detail from Employee -- + operatoer is used to concatenation - chipkana
select (name+space(5)+department)Detail from Employee  -- space(5) function is used to put space 
select (name+space(5)+department+space(5)+salary)Detail from Employee
select (name+space(5)+department+space(5)+convert(varchar(50),salary))Detail from Employee
select (name+space(5)+department+space(5)+cast(salary as varchar(50)))Detail from Employee

select (name+department)detail from employee 
-- + operator un values ko jodta hai jo same type ki hoti hai na ki un columns ko jo same type ka hota hai.
-- means + operator mainly column ki values pe apply hota hai na ki columns ke type pe. isko column ke type se koi matlab nahi hai.

select (name+space(5)+department+space(5)+salary)Details from Employee
--ab yahan pe salary ka type to int hai and int value bhi hai slaary column me iss loye nahi jud raha.
--ab hame isko conver ya cast ki help se type ko change karna hoga then ho jaega

select (name+space(5)+department+space(5)+CONVERT(varchar(50),salary)) Details from Employee -- kaam kar rahi
select (name+space(10)+department+space(10)+CAST(salary as varchar(50))) details from employee

select convert(varchar(50),salary) from Employee 
select cast(salary as varchar(50)) from Employee 
select convert(int,name) from Employee 

select convert(varchar(50), salary) salary from Employee

select cast(salary as varchar(50)) salary from Employee

-- difference between convert and cast 
-- in conver we can take 3rd parameter also but optional but we cant take in cast only 2 allow

select GETDATE()
select convert(varchar(50),GETDATE())
select cast(GETDATE()as varchar(50))
select convert(varchar(50),GETDATE(),106)

select GETDATE()-- int value return ho rahi
select convert(varchar(50), GETDATE())-- Jan 19 2024  5:19PM   -- string me a arahi
select cast(GETDATE() as varchar(50))-- Jan 19 2024  5:20PM -- string me a arahi -- but diff is only 2 parameter allow hai isme

select convert(varchar(50),GETDATE(),106) -- 19 Jan 2024 only date we get-- 3rd parameter ki help se date ki formatting kar sakte hai.

select CONVERT(varchar(50), GETDATE(), 101) -- 01/19/2024 -- MM/DD/YYYY format me milega if used 101
select CONVERT(varchar(100), GETDATE(), 103) -- 19/01/2024 -- DD/MM/YYYY format me milega if used 103
----------------------------------------------------------------------------
--id int primary key identity,
--name varchar(50),
--gender int,
--salary int,
--department varchar(50),
--dob date

-- + Operator definition
-- if two column type is same means varchar then + operator concatenate columns value chahe fir dono column me int hi value kyo naho
-- if two column type is same means int type  and value bhi dono me int hona chahiye then + operator  perform addition of values of two column 
-- if one columns type is int and another is varchar but value in both are int then addition happen
 
-- if one column type varchar and contain varchar value only and other column type is int cantain value int only thenerror happen
-- if dono column type varchar but ek me int value ho and ek me varchar value then + operator concatenate karega
-- if dono culumn is varchar but value int ho dono me then + operator conactenate kaerga 


select (salary+SPACE(5)+gender) details from Employee --
select (salary+' '+gender) details from Employee

alter table employee alter column gender  varchar(100)
alter table employee alter column salary   varchar(100)

select (name+gender) details from Employee
select (salary+space (10)+gender) details from Employee

select convert(int,salary) from Employee -- but isse values convert hogi na ki column ka type change hoga

select * from Employee

select convert(int,name) from employee-- failed

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


create table Student -- permanent tableremain always
(
id int primary key identity,
name varchar(50),
age int
)

create table #Student -- temporary table
(
id int primary key identity,
name varchar(50),
age int
)

insert into #student(name,age)values('alok',36)
insert into #student(name,age)values('Bhiraj',31)
insert into #student(name,age)values('vimlesh',32)


-- temporary table 
-- 2 types - Local and global
-- It present till current window open once we close window, then it removes automatically
-- delete automatically
-- always use and access as same as permanent table.
-- only 256 permanent table ban sakti hai ek database me
-- aur temporary table kitni bhi bana sakte hai
-- Aur ye database me store nahi hoti -- isse database ka load nahi badhta
-- But ye store hota hi - Databses folder -> System Datbases folder -> tempdb folder -> Temporary table folder - temporary table with unique id 
-- Same databse ko access karne waala user aapki temporary table ko nahi dekh sakta - same window me access hogi jisme wo bani hai other window me nahi hogi
-- temporary table same name kai ho sakta hai but permanent nahi kyo ki jab doosre user ko access hi nahi hai to fir bana sakte hai na.
-- har temporary table ke last me unique id jud jaegi 


create table ##Student --  global temporary table
(
id int primary key identity,
name varchar(50),
age int
)

insert into ##student(name,age)values('alok',36)
insert into ##student(name,age)values('Bhiraj',31)
insert into ##student(name,age)values('vimlesh',32)

-- global Temporary table.
-- 1. Multiple user access kar lega 
-- 2.  database me staore nahi hoi present in same location as lOCAL TEMP TABLE location
-- 3. EK naame se ek hi hogi
-- 4. unique hogi means poore DB me ek hi name se hogi
-- 5. ye tab tak present rahegi jab tak jis user ne banaya hai wo active rahega - jise window closed hogi ye remove ho jaegi
