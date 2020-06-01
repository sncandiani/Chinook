-- Provide a query that shows the # of invoices per country
SELECT
i.BillingCountry,
count(il.InvoiceLineId) AS "Invoice Line Count" 
FROM InvoiceLine AS il
JOIN Invoice AS i WHERE i.InvoiceId = il.InvoiceId
GROUP BY i.BillingCountry;