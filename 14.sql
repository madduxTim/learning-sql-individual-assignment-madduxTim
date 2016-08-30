/* Query that shows the # of invoices per country. HINT: GROUP BY */ 

SELECT BillingCountry, COUNT(BillingCountry)
FROM Invoice
GROUP BY Invoice.BillingCountry 