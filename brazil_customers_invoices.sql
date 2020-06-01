-- Provide a query showing the Invoices of customers who are from Brazil. 
-- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT 
c.FirstName, 
c.LastName, 
i.InvoiceId, 
i.InvoiceDate, 
i.BillingCountry
FROM 
customer as c
JOIN Invoice as i
WHERE i.customerId = c.CustomerId AND c.country = "Brazil";
