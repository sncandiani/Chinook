-- Which sales agent made the most in sales over all?
SELECT x.agent AS "Sales Agent", MAX(x.top) AS "Top 2009 Sales Agent"
FROM 
	(SELECT
	e.FirstName || " " || e.LastName AS agent,
	sum(i.total) as top
	FROM employee as e
	JOIN Customer as c on e.EmployeeId = c.SupportRepId
	JOIN Invoice as i where c.CustomerId = i.CustomerId
	GROUP BY c.SupportRepId) AS x;