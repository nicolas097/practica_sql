SELECT a.fecha,

		round(b.balance_deposito - balance_retiro) AS saldo_acumulado
		
		FROM (
		SELECT DATE_FORMAT(w.trans_date, '%Y-%m') AS fecha,
			
		SUM(w.trans_amount) AS balance_retiro 
		FROM withdraw w
		  GROUP BY DATE_FORMAT(w.trans_date, '%Y-%m')
		) AS a
		  JOIN (
		 	SELECT DATE_FORMAT(d.trans_date, '%Y-%m') AS fecha,
			SUM(d.trans_amount) AS balance_deposito 
			FROM deposit  d
			GROUP BY DATE_FORMAT(d.trans_date, '%Y-%m')	
) AS b
ON a.fecha = b.fecha
ORDER BY a.fecha;