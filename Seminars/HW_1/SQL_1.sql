CREATE DATABASE hw1_db_sql;
USE hw1_db_sql;

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