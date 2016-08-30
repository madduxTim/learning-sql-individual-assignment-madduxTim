/* Which sales agent made hte most in sales in 2009? HINT: MAX */

SELECT Employee.FirstName AS 'SalesPerson', COUNT(Invoice.InvoiceId) AS 'Total Sales'
FROM Employee
JOIN Customer
ON Customer.SupportRepId == Employee.EmployeeId
JOIN Invoice
ON Invoice.CustomerId == Customer.CustomerId
WHERE Invoice.InvoiceDate LIKE '2009%'
GROUP BY Employee.EmployeeId
LIMIT 1