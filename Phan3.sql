USE thi_md2;
-- tao view 
CREATE VIEW vw_UpcomingTrips AS
SELECT
    p.passenger_full_name,
    t.train_name,
    tk.seat_number,
    tk.ticket_price,
    tk.departure_date
FROM Tickets tk
JOIN Passengers p
    ON tk.passenger_id = p.passenger_id
JOIN Trains t
    ON tk.train_id = t.train_id
WHERE tk.departure_date > '2025-06-01';

SELECT * FROM vw_UpcomingTrips;


-- tạo view giá vé trên 500k
CREATE VIEW vw_HighValueTickets AS
SELECT
    p.passenger_full_name,
    t.train_name,
    tk.seat_number,
    tk.ticket_price
FROM Tickets tk
JOIN Passengers p
    ON tk.passenger_id = p.passenger_id
JOIN Trains t
    ON tk.train_id = t.train_id
WHERE tk.ticket_price > 500000;

SELECT * FROM vw_HighValueTickets;