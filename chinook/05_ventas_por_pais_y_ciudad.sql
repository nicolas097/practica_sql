SELECT c.Country AS pais,
      c.City AS ciudad,
		SUM(inv.Total) AS total
FROM invoice inv
INNER JOIN customer c ON c.CustomerId = inv.CustomerId
GROUP BY c.Country, c.city
ORDER BY total desc;