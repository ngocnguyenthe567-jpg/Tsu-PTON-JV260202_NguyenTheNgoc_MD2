USE thi_md2;


DELETE FROM PaymentTransactions
WHERE payment_method = 'E-Wallet'
  AND amount < 200000;
  
UPDATE Tickets
SET ticket_price = ticket_price * 0.85
WHERE departure_date < '2025-05-01';
