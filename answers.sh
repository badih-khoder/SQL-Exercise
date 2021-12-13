---------------------------------------------------------------------------------
### Basic Queries

SELECT Name FROM students ;
SELECT * FROM students WHERE Age>30;
SELECT name FROM students WHERE Age=30 AND Gender="F";
SELECT Points FROM students WHERE Name="Alex";
INSERT INTO students VALUES(7,"badih",22,"M",500);
UPDATE students SET Points=Points+1 WHERE name="Basma" ;
UPDATE students SET Points=Points-1 WHERE name="Alex" ;

---------------------------------------------------------------------------------

### Creating Table

CREATE TABLE graduates 
(
ID INTEGER PRIMARY KEY AUTOINCREMENT ,
name TEXT NOT NULL UNIQUE,
Age INT,
Gender TEXT,
Points INT,
graduation date
);


###1
INSERT INTO graduates(Name,Age,Gender,Points)
SELECT name,Age,Gender,Points
FROM students
WHERE name="Layal"

###2
UPDATE graduates 
SET Graduation = 2018-09-08 
WHERE Name = "Layal";

###3
DELETE FROM students WHERE name="Layal";

------------------------------------------------------------------------------------

### Joins

SELECT companies.Date, employees.Name, employees.Company
FROM companies
INNER join  employees on employees.Company=companies.Name


SELECT companies.Date, employees.Name, employees.Company
FROM companies
INNER join  employees on employees.Company=companies.Name
WHERE companies.Date<2000


SELECT companies.Date, employees.Name, employees.Company
FROM companies
INNER join  employees on employees.Company=companies.Name
WHERE employees.Role="Graphic Designer"



### Count & Filter

select name ,max(Points)
FROM students

select avg (Points)
FROM students

SELECT count(Points)
FROM students
WHERE Points=500

SELECT name
FROM students
WHERE name like "%s%"



