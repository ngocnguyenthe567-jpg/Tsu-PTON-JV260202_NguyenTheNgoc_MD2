-- lấy tt theo giảm dần 
SELECT
    passenger_id,
    passenger_full_name,
    passenger_email,
    passenger_phone
FROM Passengers
ORDER BY passenger_full_name DESC;

-- lấy tt theo tăng dần
SELECT
    train_id,
    train_name,
    total_seats
FROM Trains
ORDER BY total_seats ASC;

-- lấy tt vé
SELECT
    p.passenger_full_name,
    t.train_name,
    tk.departure_date,
    tk.seat_number
FROM Tickets tk
JOIN Passengers p
    ON tk.passenger_id = p.passenger_id
JOIN Trains t
    ON tk.train_id = t.train_id;
    
-- lấy tp thanh toán vé
SELECT
    p.passenger_id,
    p.passenger_full_name,
    pt.payment_method,
    pt.amount
FROM Passengers p
JOIN Tickets tk
    ON p.passenger_id = tk.passenger_id
JOIN PaymentTransactions pt
    ON tk.ticket_id = pt.ticket_id
ORDER BY pt.amount ASC;


-- lấy tt kh từ a tới z 
SELECT *
FROM Passengers
ORDER BY passenger_full_name DESC
LIMIT 2,3;

-- liẹt kê khách đặt từ 3 vé tàu 
SELECT
    p.passenger_id,
    p.passenger_full_name,
    COUNT(tk.ticket_id) AS total_tickets
FROM Passengers p
JOIN Tickets tk
    ON p.passenger_id = tk.passenger_id
GROUP BY p.passenger_id, p.passenger_full_name
HAVING COUNT(tk.ticket_id) >= 3;

-- liệt kê tàu có hơn từ 10 lượt vé 
SELECT
    t.train_id,
    t.train_name,
    COUNT(tk.ticket_id) AS total_bookings
FROM Trains t
JOIN Tickets tk
    ON t.train_id = tk.train_id
GROUP BY t.train_id, t.train_name
HAVING COUNT(tk.ticket_id) > 10;

-- lấy ds kh tổng gd hơn 2tr 
SELECT
    p.passenger_id,
    p.passenger_full_name,
    tk.train_id,
    SUM(pt.amount) AS total_amount
FROM Passengers p
JOIN Tickets tk
    ON p.passenger_id = tk.passenger_id
JOIN PaymentTransactions pt
    ON tk.ticket_id = pt.ticket_id
GROUP BY
    p.passenger_id,
    p.passenger_full_name,
    tk.train_id
HAVING SUM(pt.amount) > 2000000;

-- lấy ds hk có chữ hoàng...
SELECT
    passenger_id,
    passenger_full_name,
    passenger_email
FROM Passengers
WHERE passenger_full_name LIKE '%Hoàng%'
   OR passenger_email LIKE '%@gmail.com'
ORDER BY passenger_full_name ASC;

-- lấy ds đoàn tàu giảm dần 
SELECT
    train_id,
    train_name,
    total_seats
FROM Trains
ORDER BY total_seats DESC
LIMIT 5,5;