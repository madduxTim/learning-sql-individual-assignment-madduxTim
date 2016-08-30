/* a query that shows the top 5 most purchased tracks over all. */

SELECT Track.Name, Track.TrackId, COUNT(InvoiceLine.Quantity) "Total"
FROM Track
JOIN InvoiceLine
ON Track.TrackId == InvoiceLine.TrackId
GROUP BY Track.Name
ORDER BY Total DESC
LIMIT 5