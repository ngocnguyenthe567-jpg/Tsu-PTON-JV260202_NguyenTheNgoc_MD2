USE Thi_md2;

DELIMITER //

CREATE PROCEDURE sp_add_passenger(
    IN p_passenger_id VARCHAR(5),
    IN p_full_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_phone VARCHAR(15),
    IN p_cccd VARCHAR(20)
)
BEGIN
    INSERT INTO Passengers(
        passenger_id,
        passenger_full_name,
        passenger_email,
        passenger_phone,
        passenger_cccd
    )
    VALUES(
        p_passenger_id,
        p_full_name,
        p_email,
        p_phone,
        p_cccd
    );
END//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE sp_cancel_ticket(
    IN p_ticket_id VARCHAR(5)
)
BEGIN

    DELETE FROM PaymentTransactions
    WHERE ticket_id = p_ticket_id;

    DELETE FROM Tickets
    WHERE ticket_id = p_ticket_id;

END//

DELIMITER ;