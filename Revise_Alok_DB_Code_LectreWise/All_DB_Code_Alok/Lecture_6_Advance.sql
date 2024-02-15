--23-03-21 Monday Function and Procedure...

create database DB_Lect_6_Advnce_PR

use DB_Lect_6_Advnce_PR


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
update Employee set gender=1 where id=5
update Employee set gender=2 where id=2
update Employee set gender=2 where id=6
update Employee set gender=1 where id=9
update Employee set gender=3 where id=8
update Employee set gender=1 where id=10
update Employee set gender=1 where id=11
update Employee set gender=2 where id=12
update Employee set gender=1 where id=13

select * from Employee

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
create proc sp_emp_get
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

begin transaction
update Employee set name = 'Deepak' where id=7
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


alter proc sp_transaction_trade
@itemid int,
@qty int
as
begin
	begin try
	begin transaction
	insert into Sold(itemid,qty) values(@itemid,@qty)
	update Items set itemqty= itemqty - @qty where itemid='fahad'
	print 'TRANSACTION SUCCEESFULL !!!';
	commit transaction
	end try

	begin catch
	rollback transaction
	print 'TRANSACTION FAILED !!!';
	end catch
	
end

select * from Items
select * from Sold

exec sp_transaction_trade 1,40

exec sp_transaction_trade 3,90




-----------------------------------------------------------------------------

create proc sp_transaction
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


create proc sp_salary_gett
@id int
as
begin
select salary from Employee where id=@id
end

exec sp_salary_gett 4 -- but it return salary column not salary
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


create proc sp_salary_get
@id int
as
begin
	declare @p int
	select @p = salary from Employee where id=@id
	return @p
end

declare @d int
exec @d = sp_salary_get 4 -- 500 -- procedure se return hi kara sakte hai but hame only integer value karta hai... koi bhi non int value nahi karega
print @d
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

-- Conversion failed when converting the varchar value 'pooja' to data type int.
-----------------------------------------------
create procedure sp_namee_get 
@id int, -- input parameter input koi word hota nahi hai by default ye hota hai aur ise hame input value chahiye hoti hai
@m varchar(50) out
as
begin
	select @m=name from Employee where id=@id
end

declare @k varchar(50)
exec sp_namee_get 4,@k output
print @k

alter proc sp_ret_out_name
@id int,
@outparamter varchar(100) out
--@outparamter varchar(100) output -- out or out purt both are same like proc or procedure
as
begin
	select @outparamter = name from Employee where id=@id
end

declare @holdoutvalue varchar(100)
exec sp_ret_out_name 4,@holdoutvalue output
print @holdoutvalue
----------------------------------------------------------

--Difference between Procedure and function

--1. Prcudeure may or may not be return but function always return
--2. Procedure always return int value but function return all value
--3. Is liye procedure have output keyword kyo ki wo sabkuch nahi return karta but funtion doesnt have kyo ki wo sab kar hi raha so not required.
--4. Procedure koi bhi query chala sakte hai - all CRUD
--5. But FUnction me only select query hi chala sakte hai
--6. Procedure ke andar function use kar sakte hai
--7. but function ke andar procedure nahi use kar sakte

-- 4 classes left like trigger concept left.