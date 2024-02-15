create database --Batch9_8121   08/jan/21  join Database    JOIN 2nd Lecture
use Batch9_8121

create table tblCountry
(
cid int primary key identity,
cname varchar(50)
)
insert into tblCountry(cname)values('India')
insert into tblCountry(cname)values('Pakistan')
insert into tblCountry(cname)values('USA')

create proc sp_country_get
as
begin
select * from tblCountry
end



create table tblEmployee
(
empid int primary key identity,
name varchar(50),
countryid int
)
alter table tblEmployee alter column countryid varchar(50)

create proc sp_tblEmployee_insert
@name varchar(50),
@countryid int
as
begin
insert into tblEmployee(name,countryid)values(@name,@countryid)
end



select * from tblEmployee
select * from tblCountry

create proc sp_join
as
begin
select * from tblEmployee join tblCountry on tblEmployee.countryid=tblCountry.cid
end

create proc sp_tblEmployee_delete
@id int
as
begin
delete from tblEmployee where empid=@id
end

create proc sp_tblEmployee_edit
@id int
as
begin
select * from tblEmployee where empid=@id
end

create proc sp_tblEmployee_update
@id int,
@name varchar(50),
@countryid int
as
begin
update tblEmployee set name=@name,countryid=@countryid where empid=@id
end


