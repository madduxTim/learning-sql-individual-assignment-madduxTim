/* Provide a query that shows all invoices but includes the 
# of invoice line items. */

SELECT InvoiceLineId 'Track Purchased', COUNT(InvoiceId) AS 'Number of Purchased'
FROM InvoiceLine
GROUP BY InvoiceId
ORDER BY InvoiceLineId ASC