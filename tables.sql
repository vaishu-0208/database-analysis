-- USERS
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50)
);

INSERT INTO users VALUES
(1, 'Vaishnavi', 'vaish@example.com', 'India'),
(2, 'Murali', 'murali@example.com', 'India'),
(3, 'Shree', 'shree@example.com', 'India'),
(4, 'Anupama', 'anupama@example.com', 'India'),
(5, 'Amit', 'amit@example.com', 'India');

-- PRODUCTS
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 60000.00),
(2, 'Smartphone', 'Electronics', 30000.00),
(3, 'Headphones', 'Accessories', 1500.00),
(4, 'Book - SQL Mastery', 'Books', 750.00),
(5, 'Smartwatch', 'Wearables', 5000.00);

-- ORDERS
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO orders VALUES
(1, 1, '2025-04-10', 61500.00),
(2, 2, '2025-04-10', 1500.00),
(3, 3, '2025-04-10', 30000.00),
(4, 4, '2025-04-09', 5750.00),
(5, 5, '2025-04-08', 60000.00);

-- ORDER DETAILS
CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_details VALUES
(1, 1, 1, 1, 60000.00), -- Vaishnavi bought Laptop
(2, 1, 3, 1, 1500.00),
(3, 2, 3, 1, 1500.00), -- Murali bought Headphones
(4, 3, 2, 1, 30000.00), -- Shree bought Smartphone
(5, 4, 4, 1, 750.00), -- Anupama bought Book
(6, 4, 5, 1, 5000.00),
(7, 5, 1, 1, 60000.00); -- Amit bought Laptop

-- PAYMENTS
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(50),
    status VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments VALUES
(1, 1, '2025-04-10', 'UPI', 'Completed'),
(2, 2, '2025-04-10', 'Credit Card', 'Completed'),
(3, 3, '2025-04-10', 'Net Banking', 'Completed'),
(4, 4, '2025-04-09', 'UPI', 'Completed'),
(5, 5, '2025-04-08', 'Debit Card', 'Completed');
