/* Query that includes the purchased track name AND artist name with each invoice line item.*/

SELECT InvoiceLine.InvoiceLineId, Track.Name, Track.Composer
FROM InvoiceLine
JOIN Track ON InvoiceLine.InvoiceLineId == Track.TrackId