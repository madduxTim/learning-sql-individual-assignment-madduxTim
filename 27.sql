/* query that shows the most purchased Media Type. */ 

SELECT MediaType.Name, COUNT(InvoiceLine.InvoiceId)
FROM Invoice
JOIN InvoiceLine
ON Invoice.InvoiceId == InvoiceLine.InvoiceLineId
JOIN Track
ON Track.TrackId == InvoiceLine.TrackId
JOIN MediaType
ON MediaType.MediaTypeId == Track.MediaTypeId
GROUP BY Track.MediaTypeId;