-- JOIN: https://www.w3schools.com/sql/sql_join.asp

SELECT Customers.id, Orders.itemName, Orders.itemPrice
FROM Customers 
INNER JOIN Orders ON Customer.id == Orders.CustomerId;

SELECT Customers.CustomerID, Customers.CustomerName, COUNT(Orders.OrderID) AS OrderCount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CustomerName
HAVING COUNT(Orders.OrderID) > 3;
