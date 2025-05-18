SELECT 
    a.account_num AS numero_cuenta,
    c.card_id AS id_card,
    ROUND(IFNULL(w.trans_amount, 0), 0) AS monto_retirado,
    ROUND(IFNULL(d.trans_amount, 0), 0) AS monto_depositado
FROM cards c 
INNER JOIN accounts a ON a.card_id = c.card_id
LEFT JOIN withdraw w ON w.account_num = a.account_num
LEFT JOIN deposit d ON d.account_num = a.account_num
WHERE a.account_num NOT IN (
    SELECT account_num FROM withdraw
)
AND a.account_num NOT IN (
    SELECT account_num FROM deposit
);
