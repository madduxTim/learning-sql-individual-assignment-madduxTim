/* Provide a query that shows the total number of tracks in each playlist. 
The playlist name should be included on the restaurant table */ 

SELECT PlaylistId, COUNT(PlaylistId)
FROM PlaylistTrack
GROUP BY PlayListId