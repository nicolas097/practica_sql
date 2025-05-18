SELECT CONCAT(u.first_name, ' ',u.first_name) AS fullname,
		 a.account_num AS cuentas_sin_movimientos
FROM users u
INNER JOIN accounts a ON u.user_id = a.user_id
WHERE NOT EXISTS (SELECT * FROM withdraw
		WHERE withdraw.account_num = a.account_num
)
AND 
NOT EXISTS (SELECT * FROM deposit
WHERE deposit.account_num = a.account_num);
