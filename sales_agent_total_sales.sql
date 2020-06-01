-- Provide a query that shows total sales made by each sales agent.
SELECT
e.FirstName || " " || e.LastName as "Sales Agent",
sum(i.total) as "Total sales"
FROM employee as e
JOIN Customer as c on e.EmployeeId = c.SupportRepId
JOIN Invoice as i where c.CustomerId = i.CustomerId
GROUP BY c.SupportRepId;