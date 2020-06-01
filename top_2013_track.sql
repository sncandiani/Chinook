-- Provide a query that shows the most purchased track of 2013
SELECT x.song as "Song", max(x.num) as "Times Purchased"
FROM (
	SELECT 
	t.name as song, 
	sum(il.quantity) as num, 
	i.invoicedate
	FROM Invoice as i
	JOIN InvoiceLine as il on il.InvoiceLineId = i.invoiceId
	JOIN track t on il.TrackId = t.TrackId
	WHERE i.invoicedate between "2013-01-01" and "2013-12-31"
	GROUP BY t.name) as x;