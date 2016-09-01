/* Shows the most purchased track of 2013. */

SELECT Track.Name, Track.TrackId, COUNT(InvoiceLine.Quantity) "Total", Invoice.InvoiceDate
FROM Track
JOIN InvoiceLine
ON Track.TrackId == InvoiceLine.TrackId
JOIN Invoice
ON  Invoice.InvoiceId== InvoiceLine.InvoiceId
WHERE strftime('%Y', Invoice.InvoiceDate) == '2013'
GROUP BY Track.Name
ORDER BY Total DESC
LIMIT 1;