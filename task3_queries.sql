
-- 1. Total Orders and Revenue
SELECT COUNT(*) AS total_orders, SUM(total_amount) AS total_revenue FROM orders;

-- 2. Top 5 Customers by Spend
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- 3. Revenue by Product Category
SELECT p.category, SUM(oi.quantity * oi.price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- 4. Monthly Revenue Trend
SELECT strftime('%Y-%m', order_date) AS month, SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 5. Inactive Customers
SELECT name FROM customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);

-- 6. Create a View: Customer Summary
CREATE VIEW customer_summary AS
SELECT c.name, COUNT(o.order_id) AS total_orders, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;
