-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
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
