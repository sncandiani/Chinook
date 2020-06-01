-- Provide a query showing only the Employees who are Sales Agents.
select 
e.FirstName, 
e.LastName, 
e.title
from Employee as e
where e.title = "Sales Support Agent" ;