--  Provide a query that includes the purchased track name with each invoice line item.
SELECT 
il.InvoiceLineId,
t.name
FROM InvoiceLine as il
JOIN Track as t on il.TrackId = t.TrackId;