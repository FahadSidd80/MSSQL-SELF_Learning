

--35.a.Database_16_03_2021_before_advance


create database DB_11223_L3
use DB_11223_L3

create table tblEmployee
(
id int primary key identity,
name varchar(50),
gender varchar(50),
salary int,
department varchar(50)
)
insert into tblEmployee(name,gender,salary,department)values('alok','male',400,'IT')
insert into tblEmployee(name,gender,salary,department)values('rubina','female',800,'HR')
insert into tblEmployee(name,gender,salary,department)values('Ashutosh','male',300,'IT')
insert into tblEmployee(name,gender,salary,department)values('pooja','female',500,'Sales')
insert into tblEmployee(name,gender,salary,department)values('Biraj','male',700,'HR')
insert into tblEmployee(name,gender,salary,department)values('alka','female',600,'Sales')
insert into tblEmployee(name,gender,salary,department)values('pp','other',450,'IT')
insert into tblEmployee(name,gender,salary,department)values('kk','other',550,'HR')
insert into tblEmployee(name,gender,salary,department)values('Dayanand','male',350,'Sales')
insert into tblEmployee(name,gender,salary,department)values('Anwar','male',650,'HR')


drop table Employee

select * from tblEmployee



select gender, sum(salary) from tblEMployee group by gender

select gender, sum(salary) from tblemployee group by gender

select gender as EmpGender, sum(salary) TotalSalary from tblEmployee group by gender

select gender as EMpGender, sum(salary) Gender_Wise_Salary_Sum from tblemployee group by gender


select gender, sum(salary) as Total_Salary from tblemployee --group by gender
--Column 'tblemployee.gender' is invalid in the select list because it is not contained in either an aggregate function or the GROUP BY clause.



select gender,sum(salary) from Employee
group by gender

select gender,sum(salary)as Total_Salary from Employee
group by gender

select gender,sum(salary) Total_Salary from Employee
group by gender

select department,sum(salary) from Employee
group by department

select department , sum(salary) department_Wise_Salary_Sum from tblemployee group by department

select department EmpDepartment,sum(salary) TotalSalary from tblEmployee group by department


select department,count(*) Total_Employee from Employee
group by department

select department , count(*) Total_EMployee from tblEMployee group by department

select department,count(*) total_Employee from tblEmployee group by department

select name,count(*) Total_Employee from Employee
group by name

select name, count(*) Total_Emp_Same_Name from tblemployee group by name

select * from tblEmployee

-- 

select department,COUNT(*) from tblEmployee group by department

select count(department) from tblEmployee -- count function count no of rows mathing specific condition.

select count(*) from tblEmployee

select count(name) from tblEmployee

select * from tblEmployee

select department, count(*) from tblEmployee group by department-- departmnt wise total employee in department count ho gaye.



---------------------------------------
select count(name),gender,sum(salary) Total_Salary from Employee
group by gender


select count(name) NoOfEmployee, gender,sum(salary) Total_salary from tblEmployee group by gender
select count(gender) NoOfEmployee, gender,sum(salary) total_salary from tblEmployee group by gender


select gender,sum(salary) Total_Salary from Employee where salary > 500
group by gender having sum(salary)>1000

select gender,sum(salary) total_salary from tblEmployee  group by gender having sum(salary) > 1000

select name, count(*) Total_Employee from tblEmployee group by name

select department, count(*) total_employee from tblEmployee group by department
-- select me wahi column select hoga jo group by ya aggregate function me ho--- bus groupby ke case me.
Select gender EMpGender,COUNT(*) TotalEmployee, sum(salary) as TotalSalary from tblEmployee group by gender

select gender EmpGender, Count(*) Total_EMployee , sum(salary) as Total_Salary from tblemployee group by gender
select gender EMpGender, count(gender) Total_Employee, sum(salary) as Total_Salary from tblemployee group by gender

select department EmpDepartment, count(*) Total_Employee_Per_Department, sum(salary) as Total_Salary_Each_Department from tblemployee group by department
select department EmplDepartment, count(department) total_EMployee, sum(salary) as Total_Salary from tblemployee group by department 

Select COUNT(*) TotalEmployee,gender EMpGender, sum(salary) as TotalSalary from tblEmployee group by gender



select gender,sum(salary) Total_Salary from Employee where salary > 500
group by gender having sum(salary)>1000

select gender, sum(salary) Total_Salary from tblEMployee where salary > 500 group by gender
having sum(salary) > 1200

select gender, sum(salary) Total_Salary from tblemployee group by gender having sum(salary) > 2000

--Difference between Where and Having -- both is used to apply condition in table.

--but where is used only to apply condition on table
--and having is used to apply condition on group by
--In short without group by there is no having.

select gender,sum(salary) Total_salary from tblEmployee where salary>500 group by gender
having sum(salary) > 1000

select gender,sum(salary) Total_salary from tblEMployee where salary > 500 group by gender,salary
having salary > 10

select * from tblEmployee

select department , sum(salary) total_Salary from  tblemployee where salary > 500 group by department having sum(salary) >= 1200


-----------------------------------------------------------------------------------------
select * from tblEmployee

-- How to remove duplicate record from table.

delete from Employee where not id in(select max(id)from Employee
group by name,gender,salary,department)


delete from tblEmployee where not id in (1,5,2)

delete from tblEmployee where not id in (select max(id) from tblEmployee group by name,gender,salary,department)
select max(id),name,gender,salary,department from tblEmployee group by name,gender,salary,department

delete from tblEmployee where not id in (select max(id) from tblEmployee group by name,gender,salary,department)
delete from tblEmployee where not id in (select min(id) from tblEmployee group by name,gender,salary,department)


select name,gender, salary, department from tblEmployee group by name,gender,salary,department-- find only unique row

select min(id) as EmpID, name,gender,salary,department from tblemployee group by name,gender,salary,department

delete from tblEmployee where  id in (1002,1004)-- it will delete selected id row completely in ine go
delete from tblemployee where  not id in (1002,1004)-- it will delete all row except the row present in () bracket.

select * from tblEmployee

select min(id) as EmpID from tblemployee group by name,gender,salary,department

delete from tblEmployee where not id in (select min(id) as EmpID from tblemployee 
group by name,gender,salary,department)




-------------------------------------------------------------------------------------------
select * from tblEmployee

select max(salary) from  tblEmployee
select max(salary) from  Employee
select min(salary) from  Employee
select sum(salary) from  Employee
select avg(salary) from  Employee
select count(salary) from  Employee

select max(salary) from tblEmployee -- find maximun slaary value present in slaary column
select min(salary) from tblEmployee -- find minimum slaary value present in slaary column
select sum(salary) from tblEmployee-- it sum all slaary value present in slary column

select avg(salary) from tblEmployee -- 530 -- gives average== total salary value sum / no of slaary value
select count(salary) from tblEmployee

select count(name) from tblEmployee
select count(salary) from tblEmployee
select count(gender) from tblEmployee
select count(department) from tblEmployee



select * from tblEmployee order by name --order by basically works to find value in ascending order by default
select * from tblEmployee order by name desc


select * from tblemployee order by name 
select * from tblemployee order by name desc


select * from Employee order by name desc
select * from Employee order by salary
select * from Employee order by salary desc

select * from tblEmployee order by salary desc

select * from tblEmployee order by salary

select * from tblemployee order by salary 
select * from tblemployee order by salary asc


select top(2) * from tblemployee order by salary desc

select top(1) salary from (
select top(2) salary from tblemployee order by salary desc) ABC order by salary desc

select top(2)* from tblEmployee
select top(2)* from tblEmployee order by id desc

select top(2) * from tblEmployee order by id


select top(3) salary from tblEmployee

select top(1) salary  from 
(select top(3) salary from tblEmployee order by salary desc)ABC_Derivedtable order by salary desc

select min(salary)from
(select top(3)salary from tblEmployee order by salary desc)ABC


select top(1)salary from
(select top(3)salary from tblEmployee order by salary desc)ABC order by salary asc


select top(1) salary from (
select top(2) salary from tblemployee order by salary desc) ABC -- this ABC table is derived table.
order by salary desc

select max(salary) salary from (select top(2) salary from tblEmployee order by salary desc) abc order by salary desc

select min(salary) salary from 
(select top(2) salary from tblEmployee order by salary asc) ABC order by salary asc


