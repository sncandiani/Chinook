-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.
-- Distinct keyword allows us to only view the unique 
select distinct
i.BillingCountry
from Invoice as i;