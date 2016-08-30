/* Provide a query that shows all the Tracks, but displays no IDs. 
The resultant table should include the Album name, Media type and Genre. */

SELECT Track.Name AS 'Track Title', Album.Title AS 'Album Title', MediaType.Name AS 'Media Type', Genre.Name AS 'Genre Name'
FROM Track
JOIN Genre
ON Track.GenreId == Genre.GenreId
JOIN MediaType
ON Track.MediaTypeId == MediaType.MediaTypeId
JOIN Album 
ON Track.AlbumId == Album.AlbumId;