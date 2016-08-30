/* Which sales agent made the most in sales over all? */

SELECT Employee.FirstName AS 'SalesPerson', COUNT(Invoice.InvoiceId) AS 'Total Sales'
FROM Employee
JOIN Customer
ON Customer.SupportRepId == Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId == Customer.CustomerId
GROUP BY Employee.FirstName
ORDER BY 'Total Sales'
LIMIT 1