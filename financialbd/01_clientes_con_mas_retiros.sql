SELECT CONCAT(us.first_name, ' ', us.last_name) AS fullname,
		 COUNT(wt.trans_id)  AS num_transac,
		 ROUND(IFNULL(SUM(wt.trans_amount), 0), 0) aS monto_retirado,
		 us.user_id
FROM withdraw wt
INNER  jOIN accounts ac ON ac.account_num = wt.account_num
INNER join users us ON us.user_id = ac.user_id
GROUP BY  user_id
ORDER BY 2 DESC 
LIMIT 5;