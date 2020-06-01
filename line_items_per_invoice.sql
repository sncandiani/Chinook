-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
SELECT
count(*) as "Count per invoice"
FROM InvoiceLine as il
GROUP BY il.InvoiceId;