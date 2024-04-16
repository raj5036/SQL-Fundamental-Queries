-- Create a generic TABLE
CREATE TABLE persons(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(255),
	email VARCHAR(100),
	age INT,
	isPaidCustomer BOOLEAN,
	PRIMARY KEY(id),
	UNIQUE(email)
);

-- Create a TABLE with defined KEYS
CREATE TABLE persons(
	id INT,
	name VARCHAR(255),
	age INT,
	isPaidCustomer BOOLEAN,
	PRIMARY KEY(id)
);

-- FOREIGN KEY constraint
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

-- Create TABLE as a copy of another TABLE
-- The following SQL creates a new table called "TestTables" (which is a copy of the "Customers" table):
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;

-- Create Index
CREATE INDEX idx_lastname
ON persons(lastname);

DROP INDEX idx_lastname
on Persons;