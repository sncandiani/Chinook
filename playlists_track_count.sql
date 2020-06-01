-- Provide a query that shows the total number of tracks in each playlist.
--  The Playlist name should be include on the resulant table
SELECT 
playlistId as "Playlist",
COUNT(*) as "Track Count"
FROM PlaylistTrack as pt
GROUP BY PlaylistId;