-- JOIN: https://www.w3schools.com/sql/sql_join.asp

SELECT Customers.id, Orders.itemName, Orders.itemPrice
FROM Customers 
INNER JOIN Orders ON Customer.id == Orders.CustomerId;