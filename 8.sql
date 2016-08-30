SELECT Invoice.Total, Customer.FirstName || ' ' || Customer.LastName AS 'Customer Name', Invoice.BillingCountry, Employee.FirstName || ' ' || Employee.LastName AS 'Sales Rep Name'
FROM Customer 
INNER JOIN Invoice
ON Invoice.InvoiceId==Customer.CustomerId
INNER JOIN Employee
ON Customer.SupportRepId==Employee.EmployeeId;