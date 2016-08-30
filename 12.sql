SELECT InvoiceLine.InvoiceLineId, InvoiceLine.InvoiceId, Track.Name
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId == Track.TrackId