
create database DB_JOIN_04102023_L2
use DB_JOIN_04102023_L2
---lecture No 21

create table tblEmployee
(
empid int  primary key identity, -- primary key.
name varchar(100),
countryid int
)
-- Changing type of Country column
alter table tblEmployee alter column country varchar(100)
alter table tblEmployee alter column country int
alter table tblEMployee alter column countryid varchar(100)
alter table tblEMployee alter column countryid int


insert into tblEmployee(name,countryid)values('Fahad','1')
insert into tblEmployee(name,countryid)values('Hamza','2')
insert into tblEmployee(name,countryid)values('Ali','3')
insert into tblEmployee(name,countryid)values('Faraz','4')
insert into tblEmployee(name,countryid)values('Almas','5')
insert into tblEmployee(name,countryid)values('Aman','6')
insert into tblEmployee(name,countryid)values('Anas',7)

select * from tblEmployee
drop table tblEmployee

create table tblCountry
(
countryid int primary key identity,-- act as foreign key.
cname varchar(100)
)

select * from tblCountry
delete from tblcountry where countryid = 23
drop table  tblCountry

insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('USA')
insert into tblCountry(cname)values('Canada')
insert into tblCountry(cname)values('Russia')
insert into tblCountry(cname)values('UAE')
insert into tblCountry(cname)values('Egypt')

select * from tblEmployee
select * from tblCountry


select * from tblEmployee join tblCountry on tblEmployee.Countryid = tblCountry.countryid
select empid,name,cname from tblEmployee join tblCountry on tblEmployee.countryid = tblCountry.countryid


select empid as EmployeeID,name EmployeeName,cname CountryName from tblEmployee join tblCountry on tblEmployee.countryid = tblCountry.countryid

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

create table tblBook
(
bid int primary key identity(1,3),-- (3-1=2 ka diiference in ID)
bookname varchar(100)
)
drop table tblBook

insert into tblBook(bookname)values('Math')
insert into tblBook(bookname)values('Science')
insert into tblBook(bookname)values('English')
insert into tblBook(bookname)values('Hindi')
insert into tblBook(bookname)values('Urdu')
insert into tblBook(bookname)values('Sanskrit')
insert into tblBook(bookname)values('SST')


select * from tblBook

--------------------------------------------
create table tblCountry_2
(
cid varchar(100) primary key ,
cname varchar(100)
)

drop table tblCountry_2

insert into tblCountry_2(cid,cname)values(1123,'India')
insert into tblCountry_2(cid,cname)values('1123','Pakistan')
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
insert into tblCountry_2(cid,cname)values('10','Canada')
--insert into tblCountry_2(cid,cname)values('10','Russia') -- duplicate
insert into tblCountry_2(cid,cname)values('11HH','USA')
insert into tblCountry_2(cid,cname)values('10XX','Canada')
--insert into tblCountry_2(cid,cname)values('10XX','Russia') -- duplicate
insert into tblCountry_2(cid,cname)values('','UAE')
delete tblCountry_2 where cid=''
--insert into tblCountry_2(cid,cname)values('','Egypt') -- duplicate
insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
insert into tblCountry_2(cid,cname)values('0','Canada')
delete tblCountry_2 where cid='0'
--insert into tblCountry_2(cid,cname)values('null','Russia') -- duplicate
--insert into tblCountry_2(cid,cname)values('1123','USA') -- duplicate
insert into tblCountry_2(cid,cname)values('  ','Canada')
--insert into tblCountry_2(cid,cname)values('NULL','Russia') -- duplicate

select * from TblCountry_2

insert into TblCountry_2(cid,cname) values('1','Pakistan')
--------------------------------------------------------------

