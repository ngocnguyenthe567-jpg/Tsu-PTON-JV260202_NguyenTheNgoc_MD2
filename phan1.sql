USE thi_md2;


CREATE TABLE Passengers ( 
passenger_id VARCHAR(5) PRIMARY KEY,
passenger_full_name VARCHAR(100) NOT NULL,
passenger_email VARCHAR(100) NOT NULL,
passenger_phone VARCHAR(15) NOT NULL,
passenger_cccd VARCHAR(20) NOT NULL
);
  
CREATE TABLE Trains (
    train_id VARCHAR(5) PRIMARY KEY,
    train_name VARCHAR(100) NOT NULL,
    train_type VARCHAR(10) NOT NULL,
    total_seats INT NOT NULL
);
 
CREATE TABLE Tickets (
    ticket_id VARCHAR(5) PRIMARY KEY,
    passenger_id VARCHAR(5) NOT NULL,
    train_id VARCHAR(5) NOT NULL,
    departure_date DATE NOT NULL,
    seat_number VARCHAR(10) NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (passenger_id)
        REFERENCES Passengers(passenger_id),

    FOREIGN KEY (train_id)
        REFERENCES Trains(train_id)
);

CREATE TABLE PaymentTransactions (
transaction_id VARCHAR(5) PRIMARY KEY,
ticket_id VARCHAR(5) NOT NULL,
payment_method VARCHAR(50) NOT NULL,
transaction_date DATE NOT NULL,
amount DECIMAL(10,2) NOT NULL,
FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id)
);
 SHOW TABLES;