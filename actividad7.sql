INSERT INTO customers (FirstName, LastName, Address, City, State, Country, PostalCode, Phone, Email, SupportRepId)
SELECT 
    FirstName, 
    LastName, 
    Address, 
    City, 
    State, 
    Country, 
    PostalCode, 
    Phone, 
    Email, 
    EmployeeId 
FROM employees;


UPDATE customers
SET SupportRepId = (
    SELECT reportsTo
    FROM employees
    WHERE EmployeeId = customers.SupportRepId
);
