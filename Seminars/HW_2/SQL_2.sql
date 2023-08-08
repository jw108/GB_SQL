CREATE DATABASE hw2_db_sql;
USE hw2_db_sql;

# Задача 1. Используя операторы языка SQL, 
# создайте таблицу “sales”. Заполните ее данными.

CREATE TABLE sales (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	order_date DATE NOT NULL,
	order_cnt INT NOT NULL);

INSERT sales(order_date, order_cnt) 
VALUES 	("2021-01-01", 150), 
		("2021-01-02", 250), 
		("2021-01-03", 25), 
		("2021-01-04", 450), 
		("2021-01-05", 60);
				
SELECT * FROM sales;
+----+------------+-----------+
| id | order_date | order_cnt |
+----+------------+-----------+
|  1 | 2021-01-01 |       150 |
|  2 | 2021-01-02 |       250 |
|  3 | 2021-01-03 |        25 |
|  4 | 2021-01-04 |       450 |
|  5 | 2021-01-05 |        60 |
+----+------------+-----------+

# Задача 2.
SELECT id, order_date,
CASE 
	WHEN order_cnt < 100 THEN 'Маленький заказ'
	WHEN order_cnt >= 100 AND order_cnt <= 300 THEN 'Средний заказ'
	ELSE 'Большой заказ'
END AS bucket
FROM sales;
+----+------------+-----------------+
| id | order_date | bucket          |
+----+------------+-----------------+
|  1 | 2021-01-01 | Средний заказ   |
|  2 | 2021-01-02 | Средний заказ   |
|  3 | 2021-01-03 | Маленький заказ |
|  4 | 2021-01-04 | Большой заказ   |
|  5 | 2021-01-05 | Маленький заказ |
+----+------------+-----------------+

# Задача 3. Создайте таблицу “orders”, заполните ее значениями. 
-- Покажите “полный” статус заказа, используя оператор CASE.

CREATE TABLE orders (
	orderid INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
	employeeid VARCHAR(3) NOT NULL,
	amount FLOAT(8,2) NOT NULL,
	orderstatus VARCHAR(20) NOT NULL);

INSERT orders(employeeid, amount, orderstatus) 
VALUES 	("e03", 15.00, 'OPEN'),
		("e01", 25.50, 'OPEN'),
		("e05", 100.70, 'CLOSED'),
		("e02", 22.18, 'OPEN'),
		("e04", 9.50, 'CANCELLED'),
		("e04", 99.99, 'OPEN');

SELECT * FROM orders;				
+---------+------------+--------+-------------+
| orderid | employeeid | amount | orderstatus |
+---------+------------+--------+-------------+
|       1 | e03        |     15 | OPEN        |
|       2 | e01        |   25.5 | OPEN        |
|       3 | e05        |  100.7 | CLOSED      |
|       4 | e02        |  22.18 | OPEN        |
|       5 | e04        |    9.5 | CANCELLED   |
|       6 | e04        |  99.99 | OPEN        |
+---------+------------+--------+-------------+				
6 rows in set (0.0005 sec)
				
SELECT orderid, orderstatus,
CASE 
	WHEN orderstatus = 'OPEN' THEN 'Order is in open state.'
	WHEN orderstatus = 'CLOSED' THEN 'Order is closed.'
	WHEN orderstatus = 'CANCELLED' THEN 'Order is in open state.'
	ELSE 'NONE'
END AS order_summary
FROM orders;
+---------+-------------+-------------------------+
| orderid | orderstatus | order_summary           |
+---------+-------------+-------------------------+
|       1 | OPEN        | Order is in open state. |
|       2 | OPEN        | Order is in open state. |
|       3 | CLOSED      | Order is closed.        |
|       4 | OPEN        | Order is in open state. |
|       5 | CANCELLED   | Order is in open state. |
|       6 | OPEN        | Order is in open state. |
+---------+-------------+-------------------------+
6 rows in set (0.0004 sec)
