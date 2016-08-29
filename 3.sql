SELECT Customer.FirstName || ' ' || Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry 
FROM Customer, Invoice 
WHERE Country = 'Brazil';