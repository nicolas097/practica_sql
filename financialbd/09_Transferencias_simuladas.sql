SELECT 
    a.account_num, 
    balance, 
    balance  + (
    	       SELECT 
	       CASE 
		   WHEN a.account_num =  219358439 THEN w.trans_amount 
		   WHEN a.account_num = 114830997 THEN  -w.trans_amount
		  ELSE 0
		  END
		 FROM withdraw w
   		 WHERE w.trans_id = 628776428
  		 ) AS nuevo_balance
	
FROM accounts a
WHERE a.account_num IN (114830997, 219358439);
