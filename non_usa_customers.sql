-- Sql query selecting Id, Full Name, and Country for customers outside of USA
SELECT 
CustomerId, FirstName, LastName, Country
FROM Customer
WHERE Country != "USA";