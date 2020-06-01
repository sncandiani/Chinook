-- How many Invoices were there in 2009 and 2011?
-- 166
SELECT 
CAST(InvoiceDate as date)
as "Invoice Year", 
COUNT(i.InvoiceId) as "Count"
from Invoice as i
WHERE "Invoice Year" = "2009"
OR "Invoice Year" = "2011"
GROUP BY "Invoice Year";