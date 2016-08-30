/* Provide a query that shows the # of customers assigned to each sales agent. */ 

SELECT Employee.FirstName, Employee.EmployeeId, COUNT(Customer.CustomerId)
FROM Employee
JOIN Customer
ON Employee.EmployeeId == Customer.SupportRepId
GROUP BY Employee.EmployeeId;