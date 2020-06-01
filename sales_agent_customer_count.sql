-- Provide a query that shows the count of customers assigned to each sales agent.
SELECT
e.FirstName || " " || e.LastName as "Sales Agent" ,
count(CustomerId) as "Total Customers"
FROM Customer as c
JOIN Employee as e where e.EmployeeId = c.SupportRepId
GROUP BY SupportRepId;