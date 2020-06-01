-- Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT
*,
count(*) as "Count per invoice"
FROM InvoiceLine as il
JOIN Invoice as i where il.InvoiceId = i.InvoiceId
GROUP BY il.InvoiceId;