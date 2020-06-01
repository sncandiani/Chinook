-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.
SELECT
t.name AS "Track", 
g.name AS "Genre",
al.title AS "Album", 
mt.name AS "Mediatype"
FROM Track AS t
JOIN Album AS al on t.AlbumId = al.AlbumId
JOIN Genre as g on t.GenreId = g.GenreId
JOIN MediaType AS mt on t.MediaTypeId = mt.MediaTypeId;