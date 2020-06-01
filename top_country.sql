-- Which country's customers spent the most?
SELECT x.country as "Top Spending Country", MAX(x.top) as "Total"
FROM (
	SELECT
	i.BillingCountry as country,
	sum(i.total) as top
	FROM Invoice as i
	GROUP BY i.BillingCountry) AS x;