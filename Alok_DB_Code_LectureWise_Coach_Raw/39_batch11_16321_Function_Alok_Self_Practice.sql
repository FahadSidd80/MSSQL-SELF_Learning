
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

select gender, sum(salary) from Employee group by gender

select gender,sum(salary)as Total_Salary from Employee
group by gender

select gender,sum(salary) as Total_Salary from Employee group by gender

select gender,sum(salary) Total_Salary from Employee
group by gender

select department,sum(salary) from Employee
group by department

select department,count(*) Total_Employee from Employee
group by department

select name,count(*) Total_Employee from Employee
group by name

select department, sum(salary)  as Total_Salary from Employee group by department

select department,count(*) Total_EMp from Employee group by department
---------------------------------------
select count(name),gender,sum(salary) Total_Salary from Employee
group by gender

select count(name) from Employee



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

select min(salary) from Employee

select top(1) salary from 
(select top(3) salary from Employee order by salary desc) A order by salary desc

-------------------------------------------------------------------------------------------

create function sum (@x1 as int, @x2 as int)
as
begin
return ()
end