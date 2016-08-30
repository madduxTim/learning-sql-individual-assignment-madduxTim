/* Provide a query that shows the top 3 best selling artists. */

SELECT Track.Composer, Track.Name, Track.TrackId, COUNT(InvoiceLine.Quantity) AS "Total"
FROM Track
JOIN InvoiceLine
ON Track.TrackId == InvoiceLine.TrackId
GROUP BY Track.Name
ORDER BY Total DESC
LIMIT 3