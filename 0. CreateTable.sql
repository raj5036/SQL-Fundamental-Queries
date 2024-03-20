-- Create a generic TABLE
CREATE TABLE persons(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255),
	age INT,
	isPaidCustomer BOOLEAN
);

-- Create a TABLE with defined KEYS
CREATE TABLE persons(
	id INT,
	name VARCHAR(255),
	age INT,
	isPaidCustomer BOOLEAN,
	PRIMARY KEY(id)
);

-- Create TABLE as a copy of another TABLE
-- The following SQL creates a new table called "TestTables" (which is a copy of the "Customers" table):
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;