-- Provide a query that shows the invoices associated with each sales agent. 
-- The resultant table should include the Sales Agent's full name.
SELECT 
i.total, 
c.FirstName, 
c.LastName,
i.BillingCountry,
e.FirstName as "Support Agent First Name", 
e.LastName as "Support Agent Last Name"
FROM invoice as i 
JOIN customer as c
JOIN employee as e where e.EmployeeId = c.SupportRepId;