USE Thi_md2;

DELIMITER //

CREATE TRIGGER tg_check_ticket_date
BEFORE INSERT ON Tickets
FOR EACH ROW
BEGIN
    IF NEW.departure_date < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Ngay khoi hanh khong hop le';
    END IF;
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER tg_update_seats
AFTER INSERT ON Tickets
FOR EACH ROW
BEGIN
    UPDATE Trains
    SET total_seats = total_seats - 1
    WHERE train_id = NEW.train_id;
END//

DELIMITER ;
