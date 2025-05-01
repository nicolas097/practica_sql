SELECT * FROM customer c
WHERE NOT exists (
	SELECT  *
	FROM invoice i
	WHERE c.CustomerId = i.CustomerId 
);
