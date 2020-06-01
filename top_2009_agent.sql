-- Which sales agent made the most in sales in 2009?
-- UTILIZING A SUBQUERY FOR THE FIRST TIME 
-- X is the subqueried table 
-- It will only select the maximum sum and the agent name
-- Outer query is accessing the data that inner query returns
SELECT x.agent AS "Sales Agent", MAX(x.top) AS "Top 2009 Sales Agent"
FROM 
	(SELECT
	e.FirstName || " " || e.LastName AS agent,
	sum(i.total) as top
	FROM employee as e
	JOIN Customer as c on e.EmployeeId = c.SupportRepId
	JOIN Invoice as i where c.CustomerId = i.CustomerId
    -- Makes sure that it will only select the entire year of 2009
    -- Without having to change the date to extract the year
	AND i.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
	GROUP BY c.SupportRepId) AS x;