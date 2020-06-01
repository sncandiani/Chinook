-- Provide a query that shows the top 3 best selling artists.
SELECT a.name, SUM(il.quantity) AS "Tracks Sold"
FROM Artist as a
JOIN Album as al on al.ArtistId = a.ArtistId
JOIN Track as t on t.AlbumId = al.AlbumId
JOIN InvoiceLine as il on t.TrackId = il.TrackId
GROUP BY a."Name"
ORDER BY "Tracks Sold" DESC 
LIMIT 3;