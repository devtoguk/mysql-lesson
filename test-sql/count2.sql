SELECT COUNT(*) FROM Customer
INNER JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId 
WHERE CONCAT(Employee.FirstName, ' ', Employee.LastName) = 'Jane Peacock';