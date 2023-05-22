-- Delete previous data
DROP TABLE IF EXISTS BusinessEntity;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS "Order";
DROP TABLE IF EXISTS OrderDetails;

-- Create tables

CREATE TABLE IF NOT EXISTS BusinessEntity (
Id serial PRIMARY KEY NOT NULL,
Name varchar(100) NULL,
Region varchar(1000) NULL,
Zipcode varchar(10) NULL,
Size varchar(10) NULL);

CREATE TABLE IF NOT EXISTS Employee (
Id serial PRIMARY KEY NOT NULL,
FirstName varchar(100) NOT NULL,
LastName varchar(100) NOT NULL,
DateOfBirth date NULL,
Gender nchar(1) NULL,
HireDate date NULL,
NationalIdNumber varchar(20) NULL);

CREATE TABLE IF NOT EXISTS Product (
Id serial PRIMARY KEY NOT NULL,
Code varchar(50) NULL,
Name varchar(100) NULL,
Description varchar(5000) NULL,
Weight float(2) NULL,
Price float(2) NULL,
Cost float(2) NULL);

CREATE TABLE IF NOT EXISTS Customer (
Id serial PRIMARY KEY NOT NULL,
Name varchar(100) NULL,
AccountNumber varchar(50) NULL,
City varchar(50) NULL,
RegionName varchar(50) NULL,
PhoneNumber varchar(20) NULL,
IsActive boolean NULL);

CREATE TABLE IF NOT EXISTS "Order" (
Id serial PRIMARY KEY NOT NULL,
OrderDate date NULL,
Status smallint NULL,
BusinessEntityId integer NULL,
CustomerId integer NULL,
EmployeeId integer NULL,
TotalPrice float(2) NULL,
Comment varchar(500) NULL);

CREATE TABLE IF NOT EXISTS OrderDetails (
Id serial PRIMARY KEY NOT NULL,
OrderId integer NULL,
ProductId integer NULL,
Quantity integer NULL,
Price float(2) NULL);

-- Business Entity
INSERT INTO BusinessEntity (Name, Region, Zipcode, Size)
VALUES ('Vitalia Skopje', 'Skopski', '1000', 'Large');

INSERT INTO BusinessEntity (Name, Region, Zipcode, Size)
VALUES ('Vitalia Bitola', 'Bitolski', '2000', 'Large');

INSERT INTO BusinessEntity (Name, Region, Zipcode, Size)
VALUES ('Vitalia Strumica', 'Strumicki', '987', 'Medium');

INSERT INTO BusinessEntity (Name, Region, Zipcode, Size)
VALUES ('Vitalia Kumanovo', 'Kumanovski', '500', 'Medium');

INSERT INTO BusinessEntity (Name, Region, Zipcode, Size)
VALUES ('Vitalia Tetovo', 'Polog', '700', 'Small');

INSERT INTO BusinessEntity (Name, Region, Zipcode, Size)
VALUES ('Vitalia Stip', 'Stipski', '300', 'Small');

INSERT INTO BusinessEntity (Name, Region, Zipcode, Size)
VALUES ('Vitalia Ohrid', 'Ohridski', '100', 'Small');

-- Employees
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Aleksandar', 
	'Stojanovski', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'M',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Ana', 
	'Nikolovska', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'F',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Borce', 
	'Zdravevski', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'M',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Biljana', 
	'Ivanovska', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'F',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Viktor', 
	'Popovski', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'M',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Valentina', 
	'Mitrevska', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'F',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Goran', 
	'Stoilov', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'M',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Gordana', 
	'Pandeva', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'F',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Maja', 
	'Todorovska', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'F',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));
	
INSERT INTO Employee (FirstName, LastName, DateOfBirth, Gender, HireDate, NationalIdNumber)
VALUES (
	'Marko', 
	'Trajanov', 
	(SELECT timestamp '1970-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1970-01-10 10:00:00')), 
	'M',
	(SELECT timestamp '2010-01-10 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1985-01-10 10:00:00')),
	((FLOOR (random() * (999999 - 100000))) + (FLOOR (random() * (999999 - 100000)))));

-- Products
INSERT INTO Product (Name)
VALUES 
('Crunchy'), ('Granola'), ('Regular/soft'), ('Gluten Free'), ('Multigrain'), ('Take away'), ('Cornflakes'), ('Cereals'), ('Protein Bar'), ('Raw bars'), ('No Sugar Added'), ('Multigrain'),
('Gluten Free'), ('Kids Bar'), ('Fruit, Nuts & Seeds'), ('Protein balls'), ('Rice Cakes'), ('Mini cereal bites'), ('Dried Fruits'), ('Crackers'), ('Cookies'), ('Unrefined sugars'),
('Natural Sweeteners'), ('Diabetic'), ('Plant-based drinks'), ('Smoothie drinks'), ('Natural Juices'), ('Green Teas'), ('Functional Teas'), ('Fruit Teas'), ('Seeds'), ('Oils & Vinegars'),
('Gluten Free Pasta'), ('Flours'), ('Superfoods'), ('Sport Supplements'), ('Honey Syrup'), ('Sweet Spreads'), ('Spices'), ('Soups'), ('Salty Spreads'), ('Soy Pates'), ('Soy milks');

UPDATE Product 
SET Weight = random() * id * 10,
Cost = random() * id,
Price = random() * id * 20,
Code = (SUBSTRING (Name, 0, 3) || id::text),
Description = Name || ' description'
WHERE 
Code IS NULL;

-- Customer
INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Vero',
	FLOOR (random() * (999999 - 100000)),
	'Skopje',
	'Skopski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));

INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Tinex',
	FLOOR (random() * (999999 - 100000)),
	'Bitola',
	'Bitolski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));

INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Ramstore',
	FLOOR (random() * (999999 - 100000)),
	'Strumica',
	'Strumicki',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));

INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Kam',
	FLOOR (random() * (999999 - 100000)),
	'Kumanovo',
	'Kumanovski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));

INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Zito',
	FLOOR (random() * (999999 - 100000)),
	'Tetovo',
	'Tetovski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));

INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Zegin',
	FLOOR (random() * (999999 - 100000)),
	'Stip',
	'Stipski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));

INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Eurofarm',
	FLOOR (random() * (999999 - 100000)),
	'Ohrid',
	'Ohridski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));
	
INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Makpetrol',
	FLOOR (random() * (999999 - 100000)),
	'Bitola',
	'Bitolski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));
	
INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Lukoil',
	FLOOR (random() * (999999 - 100000)),
	'Kumanovo',
	'Kumanovski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));
	
INSERT INTO Customer (name, accountNumber, city, regionName, phoneNumber, isActive)
VALUES (
	'Seavus',
	FLOOR (random() * (999999 - 100000)),
	'Skopje',
	'Skopski',
	FLOOR (random() * (999999 - 100000)),
	(random() > 0.5));
	
-- Orders
do $$
begin 
	for counter in 1..100 by 1 loop
		INSERT INTO "Order" (orderDate, status, businessEntityId, customerId, employeeId, totalPrice, comment)
			VALUES (
				(SELECT timestamp '2018-01-01 20:00:00' + random() * (timestamp '1990-01-20 20:00:00' - timestamp '1988-01-10 10:00:00')),
				0,
				(SELECT Id FROM businessentity OFFSET floor(random() * (
					SELECT COUNT(*) FROM businessentity))
				LIMIT 1),
				(SELECT Id FROM customer OFFSET floor(random() * (
					SELECT COUNT(*) FROM customer))
				LIMIT 1),
				(SELECT Id FROM employee OFFSET floor(random() * (
					SELECT COUNT(*) FROM employee))
				LIMIT 1),
				(random() * 100),
				'');
	end loop;
end; $$;

-- Order details
do $$
declare
    orderRecord record;
begin
    for orderRecord in select Id, totalprice 
	       from "Order" 
	       order by Id
    loop 
		INSERT INTO orderDetails (orderId, productId, quantity, price)
		VALUES (
			orderRecord.Id,
			(SELECT Id FROM product OFFSET floor(random() * (
				SELECT COUNT(*) FROM product))
			LIMIT 1),
			floor(random() * 100), 
			orderRecord.totalPrice);
    end loop;
end; $$

SELECT * FROM BusinessEntity;
SELECT * FROM Employee;
SELECT * FROM Product;
SELECT * FROM Customer;
SELECT * FROM "Order";
SELECT * FROM OrderDetails;

-- Find all employees with first name Aleksandar
SELECT *
FROM Employee
WHERE firstname='Aleksandar'
-- Find all employees with first name Aleksandar
SELECT *
FROM Employee
WHERE firstname='Goran'
-- Find all employees with last name starting with S
SELECT *
FROM Employee
WHERE lastname LIKE 'S%'  -- pocnuva so bukvata S a bilo sto ima posle nego 

-- Find all employees with date of birth greater than 01.01.1980
SELECT *
FROM Employee
WHERE dateofbirth > '1980.01.01'

-- Find all male employees
SELECT *
FROM Employee
WHERE gender='M'
--DEFAULT DATE GODINA-MESEC-DEN
-- Find all empl hired in June2023
SELECT *
FROM Employee
WHERE hiredate BETWEEN '2010-07-01' AND '2010-07-31'

--find all empl with last name starting with m AND hired in januari 2010
SELECT *
FROM Employee
WHERE lastname like 'M%'
AND hiredate BETWEEN '2010-01-01' AND '2010-03-31'

--ordering
--ASSENDING-ASC -DEFOLTNO E 
SELECT * 
FROM Employee
ORDER BY dateofbirth

--DESC
SELECT * 
FROM Employee
ORDER BY dateofbirth DESC

SELECT * 
FROM Customer
ORDER BY name DESC

--find all empl with first name Aleksandar ordered by last name
SELECT * 
FROM Employee
WHERE firstname = 'Aleksandar'
ORDER BY lastname 

--list all empl ordered by first name
SELECT * 
FROM Employee
ORDER BY firstname


--find all male empl ordered by hire date starting by the last hired
SELECT * 
FROM Employee
WHERE gender = 'M'
ORDER BY hiredate DESC 

--UNION 
SELECT region
FROM BusinessEntity
UNION 
SELECT regionname
FROM Customer

--UNION ALL
SELECT region
FROM BusinessEntity
UNION ALL
SELECT regionname
FROM Customer

--INTERSECT
SELECT firstname,lastname
FROM Employee
WHERE firstname = 'Aleksandar' -- Stojanovski
INTERSECT
SELECT firstname,lastname
FROM Employee
WHERE lastname ='Stojanovski' 

SELECT id
FROM Employee
WHERE Id > 2
INTERSECT
SELECT Id
FROM Customer
WHERE Id < 10

SELECT region
FROM BusinessEntity
INTERSECT
SELECT regionname
FROM Customer

--list all businessEntity names and customer names in single result set with duplc
SELECT name
FROM BusinessEntity
UNION ALL
SELECT name
FROM Customer

-- list all regions where some busines entity and customers remoce duplc
SELECT region
FROM BusinessEntity
UNION
SELECT regionname
FROM Customer

--LIST ALL REGIONS WHERE WE HAVE BE AND CUST IN THE SAME TIME
SELECT region
FROM BusinessEntity
INTERSECT
SELECT regionname
FROM Customer

--CONSTRAINTS -- VALIDACIJA 


--CHECK

CREATE TABLE "User"(
	Id serial primary key not null,
	name varchar(30) NOT NULL,
	age smallint CHECK(age>=18)
	
)
insert into "User"(name,age)
values ('Angela',22),
		('Mite',25)

SELECT * FROM "User"

CREATE TABLE managers (
	Id serial primary key,
	email varchar (20) UNIQUE
)
			  
INSERT INTO managers (email)
values ('test@mail.com')
INSERT INTO managers (email)
values ('test1@mail.com')

-- FOREIGH KEYS
CREATE TABLE Artis(
	id serial primary key,
	name varchar (20)
	
)

CREATE TABLE song(
	id serial primary key,
	title varchar (20),
	artist_id integer REFERENCES Artis(id)
)

insert into Artis(name)
values('Eminem'),
	  ('Sakira'),
	  ('The Weekend'),
	  ('50 Cent')
	  
insert into Artis(name)
values('Naum Petreski')
	
SELECT * FROM ARTIS
	  
insert into Song(title,artist_id)
values('MOCKING Bird',1),	
		('Waka waka',2),
		('After Hours',3),
		('CandyShop',4),
		('Loose yourself',1)


--inner join 
SELECT * FROM Artis a
INNER JOIN Song s
ON a.id=s.artist_id


SELECT * FROM Song s
INNER JOIN Artis a
ON s.artist_id=a.id

SELECT * FROM Song s
LEFT JOIN Artis a
ON s.artist_id=a.id