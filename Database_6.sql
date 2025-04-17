CREATE TABLE customers (
    customer_id INT PRIMARY KEY ,
    name VARCHAR NOT NULL,
    email VARCHAR UNIQUE NOT NULL,
    phone VARCHAR,
    address VARCHAR,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR DEFAULT 'Active'
)

INSERT INTO customers (customer_id, name, email, phone, address, registration_date, status) 
VALUES 
(1, 'Alice Johnson', 'alice.johnson@email.com', '123-456-7890', '123 Main St, New York, NY', '2024-01-15 10:30:00', 'Active'),
(2, 'Bob Smith', 'bob.smith@email.com', '234-567-8901', '456 Elm St, Los Angeles, CA', '2023-12-10 14:15:00', 'Active'),
(3, 'Charlie Davis', 'charlie.davis@email.com', '345-678-9012', '789 Oak St, Chicago, IL', '2023-11-05 08:45:00', 'Inactive'),
(4, 'Diana Green', 'diana.green@email.com', '456-789-0123', '159 Pine St, Houston, TX', '2024-02-20 12:00:00', 'Active'),
(5, 'Ethan White', 'ethan.white@email.com', '567-890-1234', '753 Maple St, Miami, FL', '2023-10-30 16:20:00', 'Active'),
(6, 'Fiona Black', 'fiona.black@email.com', '678-901-2345', '357 Cedar St, Boston, MA', '2023-09-25 09:30:00', 'Suspended'),
(7, 'George Clark', 'george.clark@email.com', '789-012-3456', '951 Birch St, Dallas, TX', '2022-12-10 11:45:00', 'Active'),
(8, 'Hannah Miller', 'hannah.miller@email.com', '890-123-4567', '852 Spruce St, Seattle, WA', '2024-03-18 13:10:00', 'Inactive'),
(9, 'Ian Scott', 'ian.scott@email.com', '901-234-5678', '159 Redwood St, Denver, CO', '2023-07-05 15:25:00', 'Active'),
(10, 'Jessica Adams', 'jessica.adams@email.com', '012-345-6789', '753 Cypress St, San Francisco, CA', '2024-04-01 17:40:00', 'Active')

SELECT * FROM customers

---------------------------------------------------------------------------------------------------------

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL,
    status VARCHAR DEFAULT 'Pending',
    shipping_address VARCHAR,
    CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

INSERT INTO orders (order_id, customer_id, order_date, total_amount, status, shipping_address) 
VALUES 
(1, 1, '2024-03-10 12:45:00', 250.50, 'Shipped', '123 Main St, New York, NY'),
(2, 2, '2024-03-12 14:30:00', 120.00, 'Pending', '456 Elm St, Los Angeles, CA'),
(3, 3, '2024-03-15 16:10:00', 340.75, 'Delivered', '789 Oak St, Chicago, IL'),
(4, 4, '2024-03-18 09:20:00', 500.00, 'Processing', '159 Pine St, Houston, TX'),
(5, 5, '2024-03-20 11:55:00', 75.25, 'Cancelled', '753 Maple St, Miami, FL'),
(6, 6, '2024-03-22 08:40:00', 220.90, 'Pending', '357 Cedar St, Boston, MA'),
(7, 7, '2024-03-25 13:15:00', 410.30, 'Shipped', '951 Birch St, Dallas, TX'),
(8, 8, '2024-03-28 17:05:00', 90.00, 'Delivered', '852 Spruce St, Seattle, WA'),
(9, 9, '2024-03-30 10:00:00', 670.80, 'Processing', '159 Redwood St, Denver, CO'),
(10, 10, '2024-04-01 15:45:00', 150.60, 'Pending', '753 Cypress St, San Francisco, CA')


select * from orders
---------------------------------------------------------------------------------------------------------

CREATE TABLE order_items (
    item_id INT PRIMARY KEY ,
    order_id INT,
    product_name VARCHAR NOT NULL,
    quantity INT NOT NULL ,
    price DECIMAL,
    total_price DECIMAL(10,2) GENERATED ALWAYS AS (quantity * price) STORED,
    CONSTRAINT fk_order_items_orders FOREIGN KEY (order_id) REFERENCES orders(order_id)
)

INSERT INTO order_items (item_id, order_id, product_name, quantity, price) 
VALUES 
(1, 1, 'Wireless Mouse', 2, 25.50),
(2, 1, 'Keyboard', 1, 50.00),
(3, 2, 'USB-C Charger', 3, 40.00),
(4, 3, 'Bluetooth Headphones', 1, 120.75),
(5, 4, 'Smartwatch', 2, 250.00),
(6, 5, 'Laptop Stand', 1, 75.25),
(7, 6, 'External Hard Drive', 2, 110.45),
(8, 7, 'Gaming Monitor', 1, 410.30),
(9, 8, 'Portable Speaker', 3, 30.00),
(10, 9, 'Graphics Tablet', 1, 670.80)

select * from order_items