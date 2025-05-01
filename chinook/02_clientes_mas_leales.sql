SELECT COUNT(i.InvoiceId) AS frecuencia,
SUM(i.Total) AS total_compra,
CONCAT(c.FirstName, ' ', c.LastName) AS fullName
FROM invoice i
INNER JOIN  customer c ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId 
ORDER BY total_compra DESC;
