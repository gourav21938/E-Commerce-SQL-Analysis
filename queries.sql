-- ================================================
-- Northwind E-Commerce SQL Analysis
-- Tool: DB Browser for SQLite
-- ================================================


-- Query 1: Show first 10 customers
SELECT CompanyName, City
FROM Customers
LIMIT 10;


-- Query 2: Customers from UK only
SELECT CompanyName, City
FROM Customers
WHERE Country = 'UK';


-- Query 3: Top 5 most expensive products
SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC
LIMIT 5;


-- Query 4: Total orders per country
SELECT ShipCountry,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY ShipCountry
ORDER BY TotalOrders DESC;


-- Query 5: Revenue per product category
SELECT c.CategoryName,
       ROUND(SUM(od.UnitPrice * od.Quantity), 2) AS Revenue
FROM [Order Details] od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY Revenue DESC;


-- Query 6: Top 5 customers by total spend
SELECT c.CompanyName,
       ROUND(SUM(od.UnitPrice * od.Quantity), 2) AS TotalSpend
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY c.CompanyName
ORDER BY TotalSpend DESC
LIMIT 5;


-- Query 7: Monthly order trend
SELECT
  STRFTIME('%Y-%m', OrderDate) AS Month,
  COUNT(*) AS Orders
FROM Orders
GROUP BY Month
ORDER BY Month;


-- Query 8: Average order value
SELECT
  ROUND(AVG(OrderTotal), 2) AS AvgOrderValue
FROM (
  SELECT o.OrderID,
         SUM(od.UnitPrice * od.Quantity) AS OrderTotal
  FROM Orders o
  JOIN [Order Details] od ON o.OrderID = od.OrderID
  GROUP BY o.OrderID
);


-- Query 9: Employee leaderboard by orders handled
SELECT
  e.FirstName || ' ' || e.LastName AS Employee,
  COUNT(o.OrderID) AS TotalOrders
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
GROUP BY Employee
ORDER BY TotalOrders DESC;


-- Query 10: Products that have never been ordered
SELECT ProductName
FROM Products
WHERE ProductID NOT IN (
  SELECT DISTINCT ProductID
  FROM [Order Details]
);