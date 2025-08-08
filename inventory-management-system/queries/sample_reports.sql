-- ==============================
-- 📊 Sample SQL Reports
-- ==============================

-- 1. 🧾 Total sales per customer
SELECT c.name AS customer_name, SUM(o.total_amount) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC;

-- 2. 📅 Total revenue per day
SELECT DATE(order_date) AS order_day, SUM(total_amount) AS daily_revenue
FROM Orders
GROUP BY order_day
ORDER BY order_day;

-- 3. 📦 Products with low stock (less than 50 units)
SELECT name, quantity_in_stock
FROM Products
WHERE quantity_in_stock < 50
ORDER BY quantity_in_stock ASC;

-- 4. 🏆 Top 5 best-selling products
SELECT p.name AS product_name, SUM(od.quantity) AS total_units_sold
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id, p.name
ORDER BY total_units_sold DESC
LIMIT 5;

-- 5. 🧮 Total inventory value by product
SELECT name AS product_name, quantity_in_stock * price AS inventory_value
FROM Products
ORDER BY inventory_value DESC;
