SELECT o.order_id, c.customer_name, c.city, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_id;