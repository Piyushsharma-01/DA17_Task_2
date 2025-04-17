CREATE TABLE Guests (
    guest_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address TEXT,
    nationality VARCHAR(50)
)

INSERT INTO Guests (guest_id, name, email, phone_number, address, nationality) VALUES
(1, 'Aarav Malhotra', 'aarav.malhotra@example.com', '9876543301', '101, MG Road, Delhi', 'Indian'),
(2, 'Bhavna Iyer', 'bhavna.iyer@example.com', '9876543302', '202, Park Street, Mumbai', 'Indian'),
(3, 'Chirag Mehta', 'chirag.mehta@example.com', '9876543303', '303, JP Nagar, Bangalore', 'Indian'),
(4, 'Disha Nair', 'disha.nair@example.com', '9876543304', '404, Anna Salai, Chennai', 'Indian'),
(5, 'Eshan Reddy', 'eshan.reddy@example.com', '9876543305', '505, Banjara Hills, Hyderabad', 'Indian'),
(6, 'Farhan Qureshi', 'farhan.qureshi@example.com', '9876543306', '606, Charminar, Hyderabad', 'Indian'),
(7, 'Garima Kapoor', 'garima.kapoor@example.com', '9876543307', '707, Salt Lake, Kolkata', 'Indian'),
(8, 'Harsh Saxena', 'harsh.saxena@example.com', '9876543308', '808, Civil Lines, Lucknow', 'Indian'),
(9, 'Ishita Thakur', 'ishita.thakur@example.com', '9876543309', '909, Gandhi Marg, Ahmedabad', 'Indian'),
(10, 'Jatin Deshmukh', 'jatin.deshmukh@example.com', '9876543310', '1001, Law College Road, Pune', 'Indian')

select * from Guests

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY ,
    guest_id INT,
    room_number VARCHAR(10),
    check_in DATE,
    check_out DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(50),
    CONSTRAINT fk_Bookings_Guests FOREIGN KEY (guest_id) REFERENCES Guests(guest_id) 
)

INSERT INTO Bookings (booking_id, guest_id, room_number, check_in, check_out, total_amount, status) VALUES
(1, 1, '101A', '2024-07-10', '2024-07-15', 15000.00, 'Confirmed'),
(2, 2, '202B', '2024-08-01', '2024-08-07', 18000.00, 'Checked In'),
(3, 3, '303C', '2024-09-05', '2024-09-10', 20000.00, 'Pending'),
(4, 4, '404D', '2024-10-12', '2024-10-18', 22000.00, 'Cancelled'),
(5, 5, '505E', '2024-11-15', '2024-11-20', 25000.00, 'Confirmed'),
(6, 6, '606F', '2024-12-02', '2024-12-06', 12000.00, 'Checked Out'),
(7, 7, '707G', '2025-01-10', '2025-01-15', 17500.00, 'Pending'),
(8, 8, '808H', '2025-02-05', '2025-02-10', 19000.00, 'Confirmed'),
(9, 9, '909I', '2025-03-15', '2025-03-20', 21000.00, 'Checked In'),
(10, 10, '1001J', '2025-04-01', '2025-04-07', 23000.00, 'Checked Out')

select * from Bookings