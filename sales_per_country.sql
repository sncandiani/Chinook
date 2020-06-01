-- Provide a query that shows the total sales per country.
SELECT
i.BillingCountry as "Country",
sum(i.total) as "Total sales"
FROM Invoice as i
GROUP BY i.BillingCountry;