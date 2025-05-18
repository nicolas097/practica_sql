SELECT 
		 a.bank_id AS id_bank,
		 b.bank_name AS entidad_bancaria,
		 AVG(a.balance) AS balance 
FROM accounts a 
INNER JOIN bank b ON b.bank_id = a.bank_id
GROUP BY a.bank_id;

