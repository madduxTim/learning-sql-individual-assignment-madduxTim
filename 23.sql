/* Provide a query that shows the total sales per country.*/
SELECT BillingCountry, COUNT(BillingCountry)
FROM Invoice
GROUP BY BillingCountry;

/*Which country's customers spent the most. */
SELECT BillingCountry, COUNT(BillingCountry), Total
FROM Invoice
GROUP BY BillingCountry
ORDER BY Total DESC
LIMIT 1