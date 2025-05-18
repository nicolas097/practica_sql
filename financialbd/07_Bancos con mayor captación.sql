SELECT b.bank_id AS id_banco,
		 b.bank_name AS name_bank,
		 round(SUM(d.trans_amount), 0) AS monto_dep_x_banco 
FROM bank b
INNER JOIN accounts a on a.bank_id = b.bank_id
INNER JOIN deposit d ON d.account_num = a.account_num
GROUP BY b.bank_id
ORDER BY 3 desc;