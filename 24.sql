/* Shows the most purchased track of 2013. */

SELECT Track.Name, Track.TrackId, COUNT(InvoiceLine.Quantity) "Total"
FROM Track
JOIN InvoiceLine
ON Track.TrackId == InvoiceLine.TrackId
GROUP BY Track.Name
ORDER BY Total DESC
LIMIT 1

/* Not finished. */