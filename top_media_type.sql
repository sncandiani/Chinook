-- Provide a query that shows the most purchased Media Type.
SELECT max(x.media) as "Top Purchased Media Type"
	FROM(SELECT 
	t.name as track, 
	mt.name as media
	FROM Track as t
	JOIN MediaType as mt where mt.MediaTypeId = t.MediaTypeId
	ORDER BY mt.name) as x;