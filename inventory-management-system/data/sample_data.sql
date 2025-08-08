-- ==============================
-- 📥 Sample Data for Inventory System
-- ==============================

-- Insert suppliers
INSERT INTO Suppliers (name, contact_info) VALUES
('Acme Corp', 'acme@example.com'),
('Global Distributors', 'global@example.com'),
('TechSource Ltd.', 'support@techsource.com');

-- Insert products
INSERT INTO Products (name, category, price, quantity_in_stock, supplier_id) VALUES
('Wireless Mouse', 'Electronics', 25.99, 100, 1),
('Mechanical Keyboard', 'Electronics', 79.99, 50, 1),
('HDMI Cable 6ft', 'Accessories', 9.99, 200, 2),
('USB-C Hub', 'Electronics', 39.50, 75, 3);

-- Insert customers
INSERT INTO Customers (name, contact_info) VALUES
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com'),
('Alice Johnson', 'alicej@example.com');

-- Insert orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-08-01 10:30:00', 105.98),
(2, '2025-08-02 15:45:00', 49.49);

-- Insert order details
INSERT INTO Order_Details (order_id, product_id, quantity, price_at_purchase) VALUES
(1, 1, 1, 25.99),   -- John bought 1 Wireless Mouse
(1, 2, 1, 79.99),   -- John also bought 1 Mechanical Keyboard
(2, 4, 1, 39.50),   -- Jane bought 1 USB-C Hub
(2, 3, 1, 9.99);    -- Jane also bought 1 HDMI Cable
