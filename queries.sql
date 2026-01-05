-- Product Prices
SELECT productName, unitPrice 
FROM products 
ORDER BY unitPrice DESC;

-- Customers Order Date
SELECT customers.companyName, orders.orderDate
FROM customers
JOIN orders ON customers.customerID = orders.customerID;

-- Discontinued Products
SELECT productName, unitPrice
FROM products
WHERE discontinued = 1
ORDER BY unitPrice DESC;

-- Monthly Revenue
SELECT strftime('%Y-%m', orderDate) AS Month, 
       ROUND(SUM(unitPrice * quantity), 2) AS MonthlyRevenue
FROM orders
JOIN order_details ON orders.orderID = order_details.orderID
GROUP BY Month
ORDER BY Month;

-- Top 5 Customers by Revenue
SELECT c.companyName, SUM(od.unitPrice * od.quantity) AS TotalSpent
FROM customers c
JOIN orders o ON c.customerID = o.customerID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY c.companyName
ORDER BY TotalSpent DESC
LIMIT 5;

-- Employee Sales Performance
SELECT e.employeeName, e.title, ROUND(SUM(od.unitPrice * od.quantity), 2) AS TotalSales
FROM employees e
JOIN orders o ON e.employeeID = o.employeeID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY e.employeeName
ORDER BY TotalSales DESC;

-- Shippers Order Volume
SELECT s.companyName, COUNT(o.orderID) AS TotalOrders
FROM shippers s
JOIN orders o ON s.shipperID = o.shipperID
GROUP BY s.companyName;


