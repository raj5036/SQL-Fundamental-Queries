UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

-- Add Columns in a table
ALTER TABLE Persons ADD country VARCHAR(200) DEFAULT 'India';

-- Rename a column
ALTER TABLE Persons RENAME COLUMN old_name to new_name;

-- Drop a column
ALTER TABLE Persons DROP COLUMN country;