-- Provide a query that shows the top 5 most purchased tracks over all.
SELECT t.name as "Song", SUM(il.quantity) AS "Times Purchased" 
	FROM InvoiceLine as il 
	JOIN Track as t on il.TrackId = t.TrackId
	GROUP BY t.name 
	ORDER BY "Times purchased" DESC 
	LIMIT 5;