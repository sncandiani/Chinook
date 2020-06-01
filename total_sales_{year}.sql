-- What are the respective total sales for each of those years?
SELECT 
SUM(i.Total) as "Sale Total for years 2009 - 2011"
FROM Invoice as i
WHERE CAST(InvoiceDate as date) = "2009"
OR CAST(InvoiceDate as date) = "2010"
OR CAST(InvoiceDate as date) =  "2011";