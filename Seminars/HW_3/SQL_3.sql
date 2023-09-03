Task # 1

SELECT SUM(amt) 
FROM Orders 
SELECT * FROM orders WHERE odate IN ('2016/01/01')

Task # 2
SELECT COUNT(DISTINCT city) FROM customers WHERE city IS NOT NULL;

Task # 3
SELECT customer_id, MIN(order_amount) AS min_order_amount
FROM orders
GROUP BY customer_id;

Task # 4
SELECT * FROM customers
WHERE customer_name LIKE 'Г%';

Task # 5
SELECT city, MAX(rating) AS highest_rating
FROM hotels
GROUP BY city;

Task # 6
SELECT * FROM your_table
ORDER BY сумма DESC;

SELECT * FROM your_table
ORDER BY сумма ASC;

Task # 7
SELECT * FROM your_table
ORDER BY Зарплата ASC
LIMIT 5;

Task # 8 
SELECT специальность, COUNT(*) AS количество
FROM employees
WHERE специальность = 'рабочий' AND зарплата > 20000
GROUP BY специальность;

