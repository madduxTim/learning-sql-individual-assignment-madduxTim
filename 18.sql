/* Query of total sales by each sales agent */ 

SELECT Employee.FirstName AS 'SalesPerson', COUNT(Invoice.InvoiceId) AS 'Total Sales'
FROM Employee
JOIN Customer
ON Customer.SupportRepId == Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId == Customer.CustomerId
GROUP BY Employee.FirstName;