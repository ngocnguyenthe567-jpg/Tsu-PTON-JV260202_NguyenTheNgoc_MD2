USE thi_md2;

INSERT INTO Passengers
VALUES 
('P001','Nguyen Van An', 'an.nguyen@example.com','0912345678','001234567890'),
('P002','Tran Thi Binh', 'binh.tran@example.com','0923456789','002345678901'),
('P003','Le Minh Chau', 'chau.le@example.com','0934567890','003456789012'),
('P004','Pham Quoc Dat', 'dat.pham@example.com','0945678901','004567890123'),
('P005','Vo Thanh Em', 'em.vo@example.com','0956789012','005678901234');

INSERT INTO Trains
VALUES
('T001','Tau Thong Nhat 1','SE',500),
('T002','Tau Thong Nhat 2','TN',450),
('T003','Tau Sai Gon - Hue','SE',400),
('T004','Tau Ha Noi - Lao Cai','TN',350),
('T005','Tau Da Nang Express','SE',300);

INSERT INTO Tickets
VALUES
('TK001','P001','T001','2025-06-10','A01',850000),
('TK002','P002','T002','2025-06-11','B05',650000),
('TK003','P003','T003','2025-06-12','C10',720000),
('TK004','P004','T004','2025-06-13','D12',500000),
('TK005','P005','T005','2025-06-14','E08',900000);

INSERT INTO PaymentTransactions
VALUES
('TR001','TK001','Credit Card','2025-06-01',850000),
('TR002','TK002','Cash','2025-06-02',650000),
('TR003','TK003','Bank Transfer','2025-06-03',720000),
('TR004','TK004','E-Wallet','2025-06-04',500000),
('TR005','TK005','Credit Card','2025-06-05',900000);

