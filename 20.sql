/* Which sales agent made the most in sales in 2010? */

SELECT Employee.FirstName AS 'SalesPerson', COUNT(Invoice.InvoiceId) AS 'Total Sales'
FROM Employee
JOIN Customer
ON Customer.SupportRepId == Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId == Customer.CustomerId
WHERE Invoice.InvoiceDate LIKE '2010%'
GROUP BY Employee.EmployeeId
LIMIT 1