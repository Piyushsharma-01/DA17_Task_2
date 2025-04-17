CREATE TABLE Users (
    user_id INT PRIMARY KEY ,
    first_name VARCHAR,
    last_name VARCHAR,
    email VARCHAR UNIQUE,
    phone_number VARCHAR,
    created_at TIMESTAMP 
)

INSERT INTO Users (user_id, first_name, last_name, email, phone_number, created_at) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', NOW()),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '9876543210', NOW()),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '5556667777', NOW()),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '4445556666', NOW()),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '3334445555', NOW()),
(6, 'David', 'Wilson', 'david.wilson@example.com', '2223334444', NOW()),
(7, 'Eve', 'Martinez', 'eve.martinez@example.com', '1112223333', NOW()),
(8, 'Frank', 'Clark', 'frank.clark@example.com', '9998887777', NOW()),
(9, 'Grace', 'Lopez', 'grace.lopez@example.com', '8887776666', NOW()),
(10, 'Henry', 'Harris', 'henry.harris@example.com', '7776665555', NOW()),
(11, 'Ivy', 'Hall', 'ivy.hall@example.com', '6665554444', NOW()),
(12, 'Jack', 'Allen', 'jack.allen@example.com', '5554443333', NOW()),
(13, 'Kara', 'Young', 'kara.young@example.com', '4443332222', NOW()),
(14, 'Leo', 'King', 'leo.king@example.com', '3332221111', NOW()),
(15, 'Mia', 'Scott', 'mia.scott@example.com', '2221110000', NOW()),
(16, 'Nina', 'Green', 'nina.green@example.com', '1110009999', NOW()),
(17, 'Oscar', 'Adams', 'oscar.adams@example.com', '9998887776', NOW()),
(18, 'Paul', 'Baker', 'paul.baker@example.com', '8887776665', NOW()),
(19, 'Quinn', 'Carter', 'quinn.carter@example.com', '7776665554', NOW()),
(20, 'Rachel', 'Evans', 'rachel.evans@example.com', '6665554443', NOW())

select * from users

--------------------------------------------------------------------------

CREATE TABLE Products (
    product_id INT PRIMARY KEY ,
    product_name VARCHAR,
    description TEXT,
    price DECIMAL,
    stock_quantity INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO Products (product_id, product_name, description, price, stock_quantity, created_at) VALUES
(1, 'Laptop', 'High-performance laptop', 1200.00, 10, NOW()),
(2, 'Smartphone', 'Latest Android smartphone', 800.00, 20, NOW()),
(3, 'Headphones', 'Noise-canceling headphones', 200.00, 30, NOW()),
(4, 'Keyboard', 'Mechanical keyboard', 100.00, 15, NOW()),
(5, 'Mouse', 'Wireless mouse', 50.00, 25, NOW()),
(6, 'Monitor', '4K UHD Monitor', 400.00, 12, NOW()),
(7, 'Tablet', '10-inch Android Tablet', 350.00, 18, NOW()),
(8, 'Webcam', 'HD Webcam', 75.00, 40, NOW()),
(9, 'Speakers', 'Bluetooth Speakers', 120.00, 35, NOW()),
(10, 'External HDD', '2TB External Hard Drive', 150.00, 22, NOW()),
(11, 'Microphone', 'Professional USB Microphone', 180.00, 14, NOW()),
(12, 'Router', 'High-Speed WiFi Router', 90.00, 17, NOW()),
(13, 'Smartwatch', 'Fitness Smartwatch', 250.00, 28, NOW()),
(14, 'Gaming Chair', 'Ergonomic Gaming Chair', 300.00, 9, NOW()),
(15, 'Power Bank', '20000mAh Power Bank', 60.00, 50, NOW()),
(16, 'SSD', '1TB NVMe SSD', 220.00, 20, NOW()),
(17, 'Printer', 'Wireless Printer', 180.00, 12, NOW()),
(18, 'Camera', '4K Digital Camera', 800.00, 8, NOW()),
(19, 'VR Headset', 'Virtual Reality Headset', 700.00, 5, NOW()),
(20, 'Smart Light', 'WiFi LED Smart Light', 40.00, 100, NOW())

select * from products

------------------------------------------------------------------------------

CREATE TABLE Orders (
    order_id INT PRIMARY KEY ,
    user_id INT,
    order_date TIMESTAMP ,
    total_amount DECIMAL,
    order_status VARCHAR,
    shipping_address TEXT,
    CONSTRAINT fk_orders_users FOREIGN KEY (user_id) REFERENCES Users(user_id) 
)

INSERT INTO Orders (order_id, user_id, order_date, total_amount, order_status, shipping_address) VALUES
(1, 1, NOW(), 1300.00, 'Processing', '123 Main St, NY'),
(2, 2, NOW(), 900.00, 'Shipped', '456 Oak St, LA'),
(3, 3, NOW(), 250.00, 'Delivered', '789 Pine St, TX'),
(4, 4, NOW(), 150.00, 'Processing', '101 Maple St, FL'),
(5, 5, NOW(), 50.00, 'Pending', '202 Birch St, WA'),
(6, 6, NOW(), 400.00, 'Completed', '303 Pine St, CO'),
(7, 7, NOW(), 750.00, 'Processing', '404 Cedar St, NV'),
(8, 8, NOW(), 600.00, 'Shipped', '505 Willow St, AZ'),
(9, 9, NOW(), 100.00, 'Delivered', '606 Spruce St, OR'),
(10, 10, NOW(), 300.00, 'Pending', '707 Elm St, UT'),
(11, 11, NOW(), 500.00, 'Shipped', '808 Fir St, GA'),
(12, 12, NOW(), 180.00, 'Processing', '909 Oak St, VA'),
(13, 13, NOW(), 120.00, 'Completed', '101 Ash St, MI'),
(14, 14, NOW(), 820.00, 'Shipped', '202 Cedar St, OH'),
(15, 15, NOW(), 130.00, 'Delivered', '303 Elm St, WI'),
(16, 16, NOW(), 190.00, 'Pending', '404 Maple St, NC'),
(17, 17, NOW(), 220.00, 'Processing', '505 Birch St, MA'),
(18, 18, NOW(), 730.00, 'Completed', '606 Pine St, TN'),
(19, 19, NOW(), 400.00, 'Delivered', '707 Willow St, PA'),
(20, 20, NOW(), 580.00, 'Shipped', '808 Spruce St, IL')

select * from orders

---------------------------------------------------------------------------

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL,
    subtotal DECIMAL,
    CONSTRAINT fk_order_items_orders  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_order_items_products FOREIGN KEY (product_id) REFERENCES Products(product_id)
	)

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price, subtotal) VALUES
(1, 1, 1, 1, 1200.00, 1200.00),
(2, 1, 3, 1, 100.00, 100.00),
(3, 2, 2, 1, 800.00, 800.00),
(4, 3, 3, 1, 200.00, 200.00),
(5, 3, 4, 1, 50.00, 50.00),
(6, 4, 5, 2, 50.00, 100.00),
(7, 5, 6, 1, 400.00, 400.00),
(8, 6, 7, 1, 350.00, 350.00),
(9, 7, 8, 2, 75.00, 150.00),
(10, 8, 9, 1, 120.00, 120.00),
(11, 9, 10, 1, 150.00, 150.00),
(12, 10, 11, 1, 180.00, 180.00),
(13, 11, 12, 1, 90.00, 90.00),
(14, 12, 13, 1, 250.00, 250.00),
(15, 13, 14, 1, 300.00, 300.00),
(16, 14, 15, 2, 60.00, 120.00),
(17, 15, 16, 1, 220.00, 220.00),
(18, 16, 17, 1, 180.00, 180.00),
(19, 17, 18, 1, 800.00, 800.00),
(20, 18, 19, 1, 700.00, 700.00)

select * from order_items

--------------------------------------------------------------------------------

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY ,
    order_id INT,
    payment_method VARCHAR,
    payment_status VARCHAR,
    transaction_id VARCHAR UNIQUE,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_payments_orders FOREIGN KEY (order_id) REFERENCES Orders(order_id) 
)

INSERT INTO Payments (payment_id, order_id, payment_method, payment_status, transaction_id, payment_date) VALUES
(1, 1, 'Credit Card', 'Completed', 'TXN12345', NOW()),
(2, 2, 'PayPal', 'Completed', 'TXN67890', NOW()),
(3, 3, 'Debit Card', 'Completed', 'TXN54321', NOW()),
(4, 4, 'Bank Transfer', 'Pending', 'TXN98765', NOW()),
(5, 5, 'Credit Card', 'Failed', 'TXN11122', NOW()),
(6, 6, 'PayPal', 'Completed', 'TXN33344', NOW()),
(7, 7, 'Debit Card', 'Completed', 'TXN55566', NOW()),
(8, 8, 'Credit Card', 'Processing', 'TXN77788', NOW()),
(9, 9, 'Bank Transfer', 'Pending', 'TXN99900', NOW()),
(10, 10, 'UPI', 'Completed', 'TXN11223', NOW()),
(11, 11, 'Wallet', 'Completed', 'TXN33445', NOW()),
(12, 12, 'Crypto', 'Completed', 'TXN55667', NOW()),
(13, 13, 'Credit Card', 'Completed', 'TXN77889', NOW()),
(14, 14, 'PayPal', 'Completed', 'TXN99001', NOW()),
(15, 15, 'Debit Card', 'Failed', 'TXN22334', NOW()),
(16, 16, 'UPI', 'Processing', 'TXN44556', NOW()),
(17, 17, 'Bank Transfer', 'Completed', 'TXN66778', NOW()),
(18, 18, 'Wallet', 'Completed', 'TXN88990', NOW()),
(19, 19, 'Crypto', 'Pending', 'TXN90112', NOW()),
(20, 20, 'Credit Card', 'Completed', 'TXN11234', NOW())

select * from payments
