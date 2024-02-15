-- W3SCHOOL  - Tutorials

 create database W3_SCHOOL
 use W3_School

 create table Customers
 (
 CustomerID	int primary key identity not null,
 CustomerName	varchar(100) not null,
 ContactName   varchar(100) not null,	
 Address	varchar(100) not null,
 City	varchar(100) not null,
 PostalCode	 varchar(100) not null,
 Country varchar(100)
 )

 insert into Customers(	CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
 values('Fahad',	'Anas Ahmad',	'Sultanpur, UP' ,	'Sultanpur',	'228119',	'India')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Ali ahamd siddiqui',	'Ali ahmad',	'Multan, PK' ,	 'Hyderabad',	'228117',	'Pakistan')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Kamran Sajid Ahmad',	'Kamran',	 'Baloch, PK' ,		'Khaiyber',		'228917',	 'Pakistan')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Akhmal',	'Aleem Ahmad',	'Atlanta, UK' ,	 'London',	 '22 WD 10',	 'UK')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Ali',	'Zahid Ahmad',	'Abu dhabi, UAE' ,	 'Sharjah',	 '12 XD 009',	 'UAE')
 

 select * from Customers


 select DISTINCT Country from customers

 select distinct country,CustomerName from Customers

 select * from customers where customerid =1
 
 select * from customers where Country='UAE'

-- Operator					Description	
--=							Equal	
-->							Greater than	
--<							Less than	
-->=						Greater than or equal	
--<=						Less than or equal	
--<>						Not equal. Note: In some versions of SQL this operator may be written as !=	
--BETWEEN					Between a certain range	
--LIKE						Search for a pattern	
--IN						To specify multiple possible values for a column


select * from customers where CustomerID = 3
select * from customers where CustomerID > 3
select * from customers where CustomerID < 3
select * from customers where CustomerID >= 3
select * from customers where CustomerID <= 3
select * from customers where CustomerID <> 3
select * from customers where CustomerID != 3

select * from customers where CustomerID = 3


select * from customers where CustomerID Between  2 and 4 -- 2,3,4 records output
select * from customers where Country in ('India', 'Pakistan','UAE')

select * from Customers where customername  like  'F%'

select * from Customers where customername  like  '%F'

select * from Customers where customername  like  '_F%'

select * from Customers where customername  like  '__A%'

select * from Customers where customername  like  '%__A_%'

select * from Customers where customername  like  'A_%'

select * from Customers where customername  like  '%_A_%'

select * from Customers where customername  like  '_A_%'

select * from Customers where customername  like  'X%'


create table Products
(
ProductID	 int primary key identity,
ProductName	varchar(100),
SupplierID	int ,
CategoryID	 int,
Unit	varchar(100),
Price int
)

-- ORDER  BY clause
select * from Customers order by CustomerName asc
select * from Customers order by CustomerName desc
select * from Customers order by CustomerName 
select * from Customers order by CustomerName desc

--ORDER BY Several Columns
--The following SQL statement selects all customers from the "Customers" table,
--sorted by the "Country" and the "CustomerName" column. This means that it orders
--by Country, but if some rows have the same Country, it orders them by CustomerName:


select * from Customers order by Country,CustomerName
select * from Customers order by Country,Address,ContactName

select * from Customers order by country asc, CustomerName desc
select * from Customers order by city asc, ContactName desc

-- SQL AND Operator

select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'F%' or CustomerName like 'K%'


select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'A%'

select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'F%'

select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'K%'

select * from Customers where country= 'India' and CustomerName like 'F%' and ContactName like 'A%' and Address like 'S%' and PostalCode like '2%'

select * from Customers where country= 'India' and CustomerName like 'F%' and PostalCode like '2%'  


select * from Customers where Country= 'India' and CustomerName ='Fahad' and PostalCode=228119

select * from customers where country = 'Pakistan' and customerName  like 'K%' or CustomerName like 'A%'

select * from customers where country = 'Pakistan' and (customerName  like 'K%' or CustomerName like 'A%')


-- OR Operator

select * from customers where country = 'India' or country = 'UK' or country = 'Pakistan'

select * from customers where country = 'India' and country = 'UK' or country = 'Pakistan'

select * from customers  where Country='India' or CustomerName = 'fahad' or PostalCode = '228117'

select * from Customers where country = 'India' and (CustomerName like 'F%' or ContactName like 'K%')

-- NOT Operator
-- NOT Equalto  = 
select * from Customers where NOT Country = 'India'
select  * from Customers where country != 'India'
select  * from Customers where country <> 'India'

-- not  like
select * from Customers where  CustomerName not  like  'F%'

-- not between
select * from Customers where CustomerID not between 2 and 4

-- not in
select * from Customers where country not in ('India', 'Pakistan')

-- not greater than
select  * from Customers where  not CustomerID   > 3
select  * from Customers where CustomerID  !> 3
select  * from Customers where  not CustomerID   >= 3


-- not leass than
select  * from Customers where  not CustomerID   < 3
select  * from Customers where CustomerID  !< 3
select  * from Customers where  not CustomerID   <= 3

-- INSERT INTO Syntax

--INSERT INTO table_name (column1, column2, column3, ...)
--VALUES (value1, value2, value3, ...);

--2. If you are adding values for all the columns of the table, 
--you do not need to specify the column names in the SQL query. However,
--make sure the order of the values is in the same order as the columns in the table.
--Here, the INSERT INTO syntax would be as follows:

--INSERT INTO table_name
--VALUES (value1, value2, value3, ...);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway')

select * from Customers

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK')



INSERT INTO Customers 
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK')


INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', '  '),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', ' '),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', '   ')

select * from Customers

--create table Products
--(
--ProductID	 int primary key identity,
--ProductName	varchar(100),
--SupplierID	int ,
--CategoryID	 int,
--Unit	varchar(100),
--Price int
--)

insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Refrigerator',1339,10,'500 units')
insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Television',1559,70,'940 units')
insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Iron',1669,50,'880 units')
insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Trimmer',1669,80,'970 units')

select * from Products

-- What is NULL value ..?
--Note: A NULL value is different from a zero value or a field that contains spaces. 
--A field with a NULL value is one that has been left blank during record creation!

select * from Products where price is null
select price from Products where price is null

select ProductName, supplierID, CategoryID from Products where CategoryID is not null

update Products set ProductName='Touchpad' where ProductID=1

update Products set  price=900 where productID in (4,5)

select * from Products

delete from Products where ProductID=1

delete from Products -- delete whole table

drop table  Products

-- TOP Keyword

-- SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause

select top 2 * from products

select top 2  productName from Products where price = 500

select top 1 *, productName from Products 

select top 1  productName, * from Products 

--SELECT * FROM products
--FETCH FIRST 3 ROWS ONLY -- Oracle command

select top 50 percent * from products -- gives half record form table

select top 50 percent ProductName from Products

select TOP (3) ProductName from Products where price  = 500

select TOP(2) * from Products order by ProductName desc


-----------------------------------------------------------------------------------
-- The SQL MIN() and MAX() Function

select MIN(Price) from Products
select MIN(Price)  As MIN_Price from Products


select MAX(ProductName) from Products

select MAX(Price) from products

---------------------------------------------------------

select count(*) from Customers

select count(ProductName) from Products where Price > 300

select count(ProductName), ProductID from Products where Price > 300 group by productID


select * from Products

update products set price = 300  where productid between 6 and 7

SELECT COUNT(ProductName)
FROM Products

select COUNT(DISTINCT Price) from Products

select distinct price from products

select  count(distinct productname) from products

select  count(*) [no of records] from Products

select sum(Price) from Products

select sum(price) from products where productname='Laptop' or productname='Mobile'

select * from products
select sum(price * 500) from products
select sum(price * 800) from products

select sum(productID * Price) from products where productid =1
select sum(productID * Price) from products where productid =2
select sum(productID * Price) from products where productid =3
select sum(productID * Price) from products where productid =4

alter table products  add  Quantity int

update products set quantity = 300 where productid in (1,2,4,8)

update products set quantity = 200 where productid in (3,5)

update products set quantity = 100 where productid in (6,7)

select * from products

select sum (price * quantity ) from products where productid between 1 and 3

select avg(price) from products 

select * from products where price >  (select avg(price) from products ) -- sub query

--------------------------------------------------------------------------------------------------

-- WILD CARD OPERATOR

select * from products where ProductName like '%Mer%'

select * from products where ProductName like '%d'


select * from products where ProductName like 'T%'


select * from products where ProductName like 'T________N'


select * from products where ProductName like '[T]%'


select * from products where ProductName like '[TMI]%'


select * from products where ProductName like '[a-K]%'

select * from products where ProductName like '[a-z]%'


select * from products where ProductName like '[^a-K]%'


select * from products where ProductName like '[^a-z]%'

select * from products where ProductName like '![a-z]%'


select * from products where ProductName like '_E%'


select * from products where ProductName like 'Iron' -- no wild card applied


select * from products where ProductName like 'Te*'


--select * from products where ProductName like 'T[elevisio]N'

--select * from products where Price like '5#0'

--The SQL IN Operator

select  * from Customers where Country in ('India', 'Pakistan', 'UAE')

select  * from Customers where Country  not in ('India', 'Pakistan', 'UAE')

select  productname from products where productid in 
(select productID from products where price < 500)-- sub query

select  productname from products where productid not in 
(select productID from products where price < 500)

--The SQL BETWEEN Operator
--The BETWEEN operator selects values within a given range. 
--The values can be numbers, text, or dates.

--The BETWEEN operator is inclusive: begin and end values are included. 


select  * from products where price between 500 and 1000

select  * from products where price not between 500 and 700

select  * from products where price between 500 and 600 and productid in (1,2,3,4,5)

select * from products where productName between 'Desktop' and 'Laptop' order by productname

select * from products where productName not between 'Desktop' and 'Laptop' order by productname

-- BETWEEN Dates

--select * from products where orderdate between '09-20-1999' and '09-12-1999'

--SQL Aliases
--AS is Optional
--Actually, in most database languages, you can skip the AS keyword and get the same result:

SELECT CustomerID AS ID
FROM Customers

SELECT CustomerID  ID
FROM Customers

select customerid as customer_Num  , customername as Name from customers

select customerid as customer_Num  , customername as Name from customers as [Customer table]

select customerid as customer_Num  , customername as Name from customers as "Customer table"

select customerid as customer_Num  , customername as Name from customers as "Customer table" 

select productname from products as product where product.productid  in (1,9)

--Syntax
--When alias is used on column:

--SELECT column_name AS alias_name
--FROM table_name;

--When alias is used on table:

--SELECT column_name(s)
--FROM table_name AS alias_name;


select productname as "My Great products " from products 

--Concatenate Columns
--The following SQL statement creates an alias named "Address"
--that combine four columns (Address, PostalCode, City and Country):

select customername , address + ' ' + postalcode + ' ' + city + ' ' + country as address from Customers

select customername , (address + '  ' + city + '  ' + country + '  ' +  postalcode ) as "Customer address" from Customers as Customer

select customername , (address + ' ' + city + ' ' + country + '  ' +  postalcode ) as "Customer address" from Customers  Customer


select customername ,Concat (address, city , country, postalcode ) as "Customer address" from Customers  Customer


select customername , (address + SPACE(3) + city + SPACE(3) + country + SPACE(3) +  postalcode ) as "Customer address" from Customers  Customer

select customername , ('___'+ address + SPACE(3) + city + SPACE(3) + country + SPACE(3) +  postalcode ) as "Customer address" from Customers  Customer

--SELECT o.OrderID, o.OrderDate, c.CustomerName
--FROM Customers AS c, Orders AS o
--WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

select c.customerID, c.customername, p.productname from customers as c,  products as p where c.CustomerName = 'Fahad' or c.CustomerID = p.productID


select c.customername, c.address, p.productname, p.price from customers c
inner join products p on c.CustomerID = p.productid

select * from products
select * from Customers

alter table products add CustomerID int

update products set customerID = 1 where productID between 1 and 3

update products set customerID = 2 where productID in (4,5)

update products set customerID = 3 where productID in (6,7)

update products set customerID = 4 where productID = 8


select * from Customers C
join Products P on C.CustomerID = P.CustomerID

select C.CustomerID,C.customerName,C.ContactName,C.Country,P.CustomerID, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID


select CustomerID,C.customerName,C.ContactName,C.Country, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID-- Ambiguous column name 'CustomerID'


select C.CustomerID,C.customerName,C.ContactName,C.Country, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID


select C.CustomerID,C.customerName,C.ContactName,C.Country,CustomerID, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID-- Ambiguous column name 'CustomerID'

select C.CustomerID As Customerid,C.customerName,C.ContactName,C.Country,P.CustomerID, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID

select * from Customers C
left join Products P on C.CustomerID = P.CustomerID


select * from Customers C
left join Products P on C.CustomerID = P.CustomerID order by C.CustomerName


select * from  Products P
right join Customers C  on C.CustomerID = P.CustomerID order by p.ProductName


select * from  Products P
right join Customers C  on  P.CustomerID = C.CustomerID  order by p.ProductName


select * from  Customers C -- Customer table treated as left table
right join Products P   on C.CustomerID = P.CustomerID   order by p.ProductName


select * from  Products P
right join Customers C  on C.CustomerID = P.CustomerID order by ProductNAme

--SQL FULL OUTER JOIN Keyword


select * from  Products P
full outer join Customers C  on C.CustomerID = P.CustomerID order by ProductName


select * from  Products P
cross join Customers C  order by ProductNAme

--SQL Self Join


select * from  Products

select * from  Customers

alter table Products add City varchar(100)

update Products set City='Sultanpur' where ProductID in (1,2,3)

update Products set City='Hyderabad' where ProductID in (4,5,6)

update Products set City='Liverpool' where ProductID in (7,8)

select A.CustomerName As CustomerName_1 , B.CustomerNAme As CustomerName_2, A.City
from Customers A, Customers B
where A.CustomerID <> B.CustomerID And A.City = B.City
order by A.City


select A.ProductName As Product_1 , B.ProductName AS Product_2, A.City
from Products A, Products B
where A.ProductID <> B.ProductID
And A.City = B.City
Order by A.City


select A.ProductName As Product_1 , A.City
from Products A, Products B
where A.ProductID <> B.ProductID
And A.City = B.City
Order by A.City


--The SQL UNION Operator

--The UNION operator is used to combine the result-set of two or more SELECT statements.

--1. Every SELECT statement within UNION must have the same number of columns
--2. The columns must also have similar data types
--3. The columns in every SELECT statement must also be in the same order

select distinct City from Products
UNION
Select distinct City from Customers


select City from Products
UNION
Select City from Customers


--Hyderabad
--Khaiyber
--Liverpool
--London
--Sandnes
--Sharjah
--Stavanger
--Sultanpur


select City from Products
UNION
Select City from Customers
order by City



select City from Products
UNION ALL
Select City from Customers
order by City


alter table Products add Country varchar(100)


update Products set Country='India' where ProductID in (1,2,3)
					
update Products set Country='Pakistan' where ProductID in (4,5,6)
					
update Products set Country='UK' where ProductID in (7,8)



select * from Products

select City,Country from Products
where country = 'India'
UNION 
select City, Country from  Customers
where Country = 'India'
order by City

select City,Country from Products
where country = 'India'
UNION  ALL
select City, Country from  Customers
where Country = 'India'
order by City


SELECT 'CustomerName' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'ProductName', ProductName, City, Country
FROM Products


--group by
select COUNT(CustomerID) Total_Customers, Country from Customers group by Country

select COUNT(CustomerID) Total_Customers , Country from Customers group by Country
order by Count(CustomerID) desc


select COUNT(CustomerID) Total_Customers , Country from Customers group by Country
order by Count(CustomerID) desc


select C.CustomerName, P.ProductName, COUNT(P.ProductID) Total_Products from Products P
left join Customers C on C.CustomerID = P.CustomerID
group by CustomerName

select * from Products  P
left join Customers C on C.CustomerID = P.CustomerID

select COUNT(CustomerID) Tota_EMployee , Country from Customers
group by Country
having COUNT(CustomerID) > 2


select COUNT(CustomerID) Tota_EMployee , Country from Customers
group by Country
having COUNT(CustomerID) > 2
order by COUNT(CustomerID) Desc

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

Select Products.ProductName, COUNT(Customers.CustomerID) As NoOFCustomers
from (Products INNER JOIN Customers ON Customers.CustomerID = Products.CustomerID)
group by ProductName
having COUNT(Products.ProductID) < 10


--SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
--FROM Orders
--INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
--WHERE LastName = 'Davolio' OR LastName = 'Fuller'
--GROUP BY LastName
--HAVING COUNT(Orders.OrderID) > 25;


--The SQL EXISTS Operator
--The EXISTS operator is used to test for the existence of any record in a subquery.

--The EXISTS operator returns TRUE if the subquery returns one or more records.

--EXISTS Syntax
--SELECT column_name(s)
--FROM table_name
--WHERE EXISTS
--(SELECT column_name FROM table_name WHERE condition);


--select count(*) as [tables]
--   from sys.tables 

select * from Products
select * from Customers

select ProductName  from Products where Exists
(select customerName from Customers where Customers.CustomerID = Products.CustomerID and Products.Price< 1000)


select ProductName  from Products where Exists
(select customerName from Customers where Customers.CustomerID = Products.CustomerID and Price = 1000)



select ProductName,Products.Quantity  from Products where Exists
(select customerName from Customers where Customers.CustomerID = Products.CustomerID and Price = 500)


select * from Products join Customers
on Products.CustomerID = Customers.CustomerID

--The SQL ANY and ALL Operators
--The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.

--The SQL ANY Operator
--The ANY operator:

--returns a boolean value as a result
--returns TRUE if ANY of the subquery values meet the condition
--ANY means that the condition will be true if the operation is true for any of the values in the range.


--SELECT column_name(s)
--FROM table_name
--WHERE column_name operator ANY
--  (SELECT column_name
--  FROM table_name
--  WHERE condition);

SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);

  select ProductName from Products where ProductID = ANY (select CustomerID from Customers where PostalCode = '228119')

  select ProductName,productID from Products where ProductID = ANY (select CustomerID from Customers)
   
   select ProductName from Products where Products.ProductID = Customers.CustomerID

  select ProductName,ProductID from Products where ProductID = ANY (select CustomerID from Customers where PostalCode = '228119')
  
  select ProductName,ProductID from Products where ProductID = ANY (select CustomerID from Customers where CustomerID > 10)

    select CustomerName, CustomerID from Customers where CustomerID = ANY (select ProductID from Products where Price > 10)

	
    select CustomerName, CustomerID from Customers where CustomerID = ANY (select ProductID from Products where Price > 500)
  --its is basically comparioson of  single to ranges of values

  select * from Customers

  select ALL ProductName from products where true;


   select  ProductName from products where ProductID = ALL (Select CustomerID from Customers where PostalCOde = '228119')


   select  ProductName from products where ProductID = ALL (Select CustomerID from Customers where PostalCode = '228119')

   select  ProductName from products where ProductID = ALL (Select CustomerID from Customers where PostalCode = '228119')


       select CustomerName, CustomerID from Customers where CustomerID = ALL (select ProductID from Products where Price > 500)

       select CustomerName, CustomerID from Customers where CustomerID = ALL (select ProductID from Products)
	   -- nee to study in detail


--The SQL SELECT INTO Statement
--The SELECT INTO statement copies data from one table into a new table.

--SELECT INTO Syntax
--Copy all columns into a new table:


select * into BackupCustomer
from Customers

select * from Customers
select * from BackupCustomer

select * into CustomerBackup in 'PracticeBU' -- error
from Customers

SELECT * INTO CustomersBackup2017 IN 'Backup.mdb' -- error
FROM Customers;


SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;

select * from CustomersBackup2017


select * into CustomerIndia
from Customers 
where Customers.Country = 'India' or Customers.Country = 'Pakistan' or Customers.Country = 'Norway'  

select * from Customers

select * from CustomerIndia


select * into CustomerBackupJoin

GO
SET IDENTITY_INSERT [dbo].products ON

select Customers.CustomerName,Customers.CustomerID,Products.ProductName,Products.ProductID into CustomerBackupJoin_1
from  Customers 
join Products on Customers.CustomerID = Products.CustomerID

select * from CustomerBackupJoin_1

GO
SET IDENTITY_INSERT [dbo].products ON
select * into CustomerProductJoinRecords
from Customers join Products on Customers.CustomerID = Products.CustomerID


select * from Customers join Products 
 on Customers.CustomerID = Products.CustomerID

 
select * from Customers join Products 
 on Customers.CustomerID = Products.CustomerID

 select * from CustomerBackupJoin

 select * into Products_1
 from products where 1=0

 select * from Products_1


-- SQL INSERT INTO SELECT Statement
--The SQL INSERT INTO SELECT Statement
--The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

--The INSERT INTO SELECT statement requires that the data types in source and target tables match.

--Note: The existing records in the target table are unaffected.

--INSERT INTO SELECT Syntax
--Copy all columns from one table to another table:

--INSERT INTO table2
--SELECT * FROM table1
--WHERE condition;


insert into Products_1 select *  from Products where IDENTITY_INSERT is on

select * from Products

insert into Products_1(ProductName,SupplierID,CategoryID,Unit) 
select ProductName,SupplierID,CategoryID,Unit from Products

select * from Products_1


select * from BackupCustomer

select * into Customer_1
from Customers where 1=2

insert into Customer_1(CustomerName,ContactName,City,Country,Address,PostalCode)
select CustomerName,ContactName,City,Country,Address,PostalCode from Customers 
where Country in ('India','pakistan','Norway')

select * from Customer_1

Select * from  Products_1

insert into Products_1(Price,Quantity,CustomerID,City,Country)
select Price,Quantity,CustomerID,City,Country from Products


--The SQL CASE Expression
----The CASE expression goes through conditions and returns a value when the first condition is met 
--(like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

----If there is no ELSE part and no conditions are true, it returns NULL.

--CASE Syntax
--CASE
--    WHEN condition1 THEN result1
--    WHEN condition2 THEN result2
--    WHEN conditionN THEN resultN
--    ELSE result
--END;



select ProductID,Price,ProductName,
case 
		when Price = 500 then 'Price is equal to 500'
		when Price < 500 then 'Price is less than 500'
		when Price > 500 then 'Price is greater than 500'
		Else 'Price not matched'
end as PriceText
from Products


select CustomerID,CustomerName,Country
case 
		when Country = 'India' then 'Indian'
		when Country  != 'Indian' then 'Foriegner'
		--Else 'No country Matched'
end as Citizenship
from Customers

select * from Customers
select * from Products

SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);

SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN Country IS NULL THEN City
    ELSE Country
END);





--select CustomerName from cutomers
--case 
--when country = 'India' then country
--else country
--end as citizenship

--GO
--SET IDENTITY_INSERT [dbo].[Employee] ON 

select ProductName


CREATE TABLE dbo.Employee 
( 
EmployeeID INT IDENTITY PRIMARY KEY, 
EmployeeName VARCHAR(100) NOT NULL, 
Gender VARCHAR(1) NOT NULL, 
StateCode VARCHAR(20) NOT NULL, 
Salary money NOT NULL,
) 


GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

GO
SET IDENTITY_INSERT [dbo].[Employee] OFF

GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (201, N'Jerome', N'M', N'FL', 83000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (202, N'Ray', N'M', N'AL', 88000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (203, N'Stella', N'F', N'AL', 76000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (204, N'Gilbert', N'M', N'Ar', 42000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (205, N'Edward', N'M', N'FL', 93000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (206, N'Ernest', N'F', N'Al', 64000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (207, N'Jorge', N'F', N'IN', 75000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (208, N'Nicholas', N'F', N'Ge', 71000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (209, N'Lawrence', N'M', N'IN', 95000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (210, N'Salvador', N'M', N'Co', 75000.0000)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO

select * from Employee

select EmployeeName,Gender,
case
when gender = 'M' then 'Male'
when gender = 'F' then 'Female'
else 'Others'
end as GenderDefinition
from Employee

select CustomerName,ContactName,
case
when country = 'India' then 'Indian'
--when gender = '' then 'Female'
else 'Foreigner'
end as Citizenship
from Customers


select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
--when gender = '' then 'Female'
else 'Foreigner'
end as Citizenship
from Customers

select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'India' then 'Foreigner'
else 'No country found'
end as Citizenship
from Customers


select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'India' then 'Foreigner'
else 'No country found'
end --as Citizenship -- used only for aliasing
from Customers


select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'India' then 'Foreigner'
when country is null then 'Country column value is null'
when country is not null then 'No country found'
else 'No country found'
end as Citizenship -- used only for aliasing
from Customers

update Customers set Country = '  ' where CustomerID=13

go 
set IDENTITY_INSERT dbo.Customers on

GO
SET IDENTITY_INSERT [dbo].[Customers] OFF

insert into Customers(CustomerName,contactname,address,city,postalcode,country) values('Fahad ALi','Siddiqui','Atlanta, US','Atlanta','213122','')



select * from Customers




