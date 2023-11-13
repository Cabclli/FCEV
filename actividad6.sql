DELETE FROM customers
WHERE CustomerId NOT IN (SELECT DISTINCT CustomerId FROM invoices);