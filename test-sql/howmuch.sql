SELECT SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity) as TotalSales, Track.Name as Track FROM InvoiceLine
INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId
WHERE Track.Name = 'The Woman King';