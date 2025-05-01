	SELECT SUM(invl.Quantity * tr.UnitPrice) AS TotalVentaPorGenero,
			gn.`Name` AS nombre_genero    
	FROM genre gn
	INNER JOIN track tr ON tr.GenreId = gn.GenreId
	INNER JOIN invoiceline invl ON  invl.TrackId = tr.TrackId
	GROUP BY gn.`Name`;