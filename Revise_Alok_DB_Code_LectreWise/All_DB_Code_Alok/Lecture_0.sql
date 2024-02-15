create database DB_112223_L2
use DB_112223_L2

create table tblEmployee
(
empid int primary key identity,
name varchar(100),
age int,
salary int,
city varchar(100),
status int default 0,
inserted_date date default Getdate()-- means today date lega.
)

--  primary key -- No Null, No duplicate value
--Identity -- Auto increment  
-- int type column me no single quotes req.
select * from tblEMployee

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

update tblEMployee set name='Abbas', age=45, city='Lucknow' where empid = 5
delete from tblEmployee where empid=6

update tblemployee set name='Zarrish' , age= 24, city='Bareli' where empid =3

delete from tblemployee where empid=5
-----------------------------------------------------------------------------------------------
--Interview Questions

insert tblEmployee(name,age,salary,city)values('Asif',30,9800,'Jaunpur')
delete tblEmployee where empid=8

-- here in Insert Query into is optional
-- and in Delete Query from is optional

select * from tblEMployee
delete tblemployee where empid=7

insert tblemployee(name,age,salary)values('Kamran',34,24242)



------------------------------------------------------------------------------------------------
