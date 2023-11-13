UPDATE employees
SET ReportsTo = (SELECT EmployeeId from employees WHERE ReportsTo is null) WHERE ReportsTo is null