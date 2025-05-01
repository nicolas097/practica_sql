	SELECT COUNT(*) AS cantidad_vendida,
			   ar.`Name` AS artista
	FROM invoiceline il
	INNER JOIN track tr ON tr.TrackId = il.TrackId
	INNER JOIN album al ON al.AlbumId = tr.AlbumId
	INNER JOIN artist ar ON ar.ArtistId = al.ArtistId
	GROUP BY ar.`Name`
	ORDER BY 1 DESC
	LIMIT 5;