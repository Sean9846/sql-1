SELECT c.customer_name, o.order_date, o.total_amount, 
    (SELECT AVG(o2.total_amount) FROM orders o2 WHERE o2.customer_id = c.customer_id) AS avg_total
    FROM customers c JOIN orders o ON c.customer_id = o.customer_id
    WHERE c.city = 'New York';