SELECT CONCAT(Customer.FirstName, ' ', Customer.LastName) AS Customer, Invoice.InvoiceDate, Total FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
ORDER BY Invoice.Total DESC, Invoice.InvoiceDate DESC LIMIT 10;