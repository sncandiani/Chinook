-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT 
il.InvoiceLineId,
t.name, 
ar.name
FROM InvoiceLine as il
JOIN Track as t on il.TrackId = t.TrackId
JOIN Album as a on t.AlbumId = a.AlbumId
JOIN Artist as ar on a.ArtistId = a.ArtistId;