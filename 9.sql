/* How many Invoices were there in 2009 and 2011? */ 
SELECT COUNT(InvoiceId) FROM Invoice
WHERE InvoiceDate LIKE '2009%';

SELECT COUNT(InvoiceId) FROM Invoice
WHERE InvoiceDate LIKE '2011%';

/* What are the respective total sales for each of those years? */
SELECT SUM(Total) FROM Invoice
WHERE InvoiceDate LIKE '2009%';

SELECT SUM(Total) FROM Invoice
WHERE InvoiceDate LIKE '2011%';

/* Got to be a way to combine, but I could not find it.*/ 