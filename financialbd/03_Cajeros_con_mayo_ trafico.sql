SELECT 
    atm.bank_id,
    atm.atm_address, 
    atm.atm_id,
    t2.num_deposit,
    t.num_retiro,
    t2.num_deposit + t.num_retiro AS total_transac
  FROM 
    (
        SELECT COUNT(wt.trans_id) AS num_retiro,
              acc.bank_id AS id_bank
        FROM  withdraw wt
        RIGHT JOIN accounts acc ON acc.account_num = wt.account_num
        GROUP BY acc.bank_id
    ) AS t
   JOIN 
    (
        SELECT COUNT(d.trans_id) AS num_deposit,
             acc.bank_id AS id_bank
        FROM deposit d
        RIGHT JOIN accounts acc ON acc.account_num = d.account_num
        GROUP BY acc.bank_id
    ) AS t2 ON t.id_bank = t2.id_bank  
   JOIN 
   atms atm ON atm.bank_id = t.id_bank;
