-- Display Schema of table 'Persons'
DESCRIBE Persons;

SHOW CREATE table Persons; -- It will give 'CREATE TABLE' command for this table

-- Show all records in 'Persons'
SELECT * FROM Persons;

-- Show all records with a Condition
SELECT * FROM Persons WHERE name='Raj';

-- with Logical Operators
-- AND:	TRUE if all the conditions separated by AND is TRUE
SELECT * FROM Persons WHERE name='Raj' AND age=26; 

-- OR: TRUE if any of the conditions separated by OR is TRUE
SELECT * FROM Persons WHERE name='Raj' OR age=26; 
SELECT * FROM Persons WHERE name LIKE 'R%' OR name like 'A%'; --VVI (use of LIKE and OR together)

-- NOT: Displays a record if the condition(s) is NOT TRUE
SELECT * FROM Customers WHERE City NOT LIKE 's%';
SELECT * FROM Customers WHERE NOT Country='Spain';

-- BETWEEN: TRUE if the operand is within the range of comparisons
select * from persons where age between 20 and 60;

-- ALL 

-- ANY

-- String WildCards
/*
	1. The percent sign % represents zero, one, or multiple characters
	2. The underscore sign _ represents one, single character
*/

SELECT * FROM Persons WHERE name LIKE 'R%'; -- name must start with 'R'
SELECT * FROM Persons WHERE name LIKE 'R__%'; -- name must start with 'R' and have at least 3 characters
SELECT * FROM Customers WHERE city LIKE '%L%'; --Return all customers from a city that contains the letter 'L'
SELECT * FROM Customers WHERE CustomerName LIKE '%a'; --Return all customers that ends with 'a'

-- IN
SELECT * FROM Persons WHERE age IN (21, 24, 26);
SELECT * FROM Persons WHERE age NOT IN (21, 24, 26); -- with NOT

-- BETWEEN
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;

-- Count 
SELECT COUNT(*) FROM Products;

-- Sum
SELECT SUM(age) FROM Persons;

-- Avg 
SELECT AVG(age) FROM Perons;

-- Min/Max
SELECT MIN(age) FROM Persons;
SELECT MAX(age) FROM Perons;

-- Order by 
SELECT * FROM Persons ORDER BY age ASC;

-- The following SQL statement selects all customers from the "Customers" table, 
-- sorted by the "Country" and the "CustomerName" column. This means that it orders by Country, 
-- but if some rows have the same Country, it orders them by CustomerName:
SELECT * FROM Customers
ORDER BY Country, CustomerName;

-- Group BY
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

-- Having
-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
SELECT COUNT(userId), name 
FROM Customers
GROUP BY country 
HAVING COUNT(userId) > 5; 