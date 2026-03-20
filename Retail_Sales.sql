-- CREATE DATABASE retail_sales_project;
USE retail_sales_project;

-- CREATE TABLE retail_sales (
-- transaction_id INT,
-- sale_date DATE,
-- customer_id INT,
-- gender VARCHAR(10),
-- age INT,
-- product_category VARCHAR(50),
-- quantity INT,
-- price_per_unit FLOAT,
-- total_amount FLOAT
-- );

-- LOAD DATA INFILE '"C:\Users\Tejal\OneDrive\Apps\Projects\AI-Powered Retail Sales Forecasting\retail_sales.csv"'
-- INTO TABLE retail_sales
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- SHOW VARIABLES LIKE "secure_file_priv";

-- LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retail_sales.csv'
-- INTO TABLE retail_sales
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS
-- (transaction_id, @sale_date, customer_id, gender, age, product_category, quantity, price_per_unit, total_amount)
-- SET sale_date = STR_TO_DATE(@sale_date, '%d-%m-%Y');

-- DROP TABLE retail_sales;

-- CREATE TABLE retail_sales (
-- transaction_id INT,
-- sale_date DATE,
-- customer_id VARCHAR(20),
-- gender VARCHAR(10),
-- age INT,
-- product_category VARCHAR(50),
-- quantity INT,
-- price_per_unit FLOAT,
-- total_amount FLOAT
-- );

-- LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retail_sales.csv'
-- INTO TABLE retail_sales
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS
-- (transaction_id, @sale_date, customer_id, gender, age, product_category, quantity, price_per_unit, total_amount)
-- SET sale_date = STR_TO_DATE(@sale_date, '%d-%m-%Y');

-- SELECT * FROM retail_sales LIMIT 10;
-- SELECT COUNT(*) FROM retail_sales;

-- SELECT *
-- FROM retail_sales
-- WHERE transaction_id IS NULL
-- OR sale_date IS NULL
-- OR customer_id IS NULL
-- OR gender IS NULL
-- OR age IS NULL
-- OR product_category IS NULL
-- OR quantity IS NULL
-- OR price_per_unit IS NULL
-- OR total_amount IS NULL;

-- SELECT transaction_id, COUNT(*)
-- FROM retail_sales
-- GROUP BY transaction_id
-- HAVING COUNT(*) > 1;

-- SELECT *
-- FROM retail_sales
-- WHERE age < 10 OR age > 100;

-- SELECT *
-- FROM retail_sales
-- WHERE quantity < 0 OR price_per_unit < 0 OR total_amount < 0;

-- SELECT 
-- sale_date,
-- MONTH(sale_date) AS month,
-- YEAR(sale_date) AS year
-- FROM retail_sales;

-- SELECT 
-- YEAR(sale_date) AS year,
-- MONTH(sale_date) AS month,
-- SUM(total_amount) AS monthly_sales
-- FROM retail_sales
-- GROUP BY year, month
-- ORDER BY year, month;

-- SELECT * FROM retail_sales;

-- SELECT SUM(total_amount) AS total_revenue
-- FROM retail_sales;

-- SELECT COUNT(*) AS total_transactions
-- FROM retail_sales;

-- SELECT product_category,
-- SUM(total_amount) AS total_sales
-- FROM retail_sales
-- GROUP BY product_category
-- ORDER BY total_sales DESC;

-- SELECT gender,
-- SUM(total_amount) AS total_sales
-- FROM retail_sales
-- GROUP BY gender;

-- SELECT AVG(age) AS average_customer_age
-- FROM retail_sales;

-- SELECT *
-- FROM retail_sales
-- ORDER BY total_amount DESC
-- LIMIT 10;

-- SELECT product_category,
-- SUM(quantity) AS total_quantity_sold
-- FROM retail_sales
-- GROUP BY product_category
-- ORDER BY total_quantity_sold DESC;

-- SELECT 
-- YEAR(sale_date) AS year,
-- MONTH(sale_date) AS month,
-- SUM(total_amount) AS monthly_revenue
-- FROM retail_sales
-- GROUP BY year, month
-- ORDER BY year, month;

-- SELECT 
-- CASE
-- WHEN age BETWEEN 18 AND 25 THEN '18-25'
-- WHEN age BETWEEN 26 AND 35 THEN '26-35'
-- WHEN age BETWEEN 36 AND 50 THEN '36-50'
-- ELSE '50+'
-- END AS age_group,
-- SUM(total_amount) AS revenue
-- FROM retail_sales
-- GROUP BY age_group;

-- SELECT customer_id,
-- SUM(total_amount) AS total_spent
-- FROM retail_sales
-- GROUP BY customer_id
-- ORDER BY total_spent DESC
-- LIMIT 10;

-- SELECT 
-- customer_id,
-- COUNT(transaction_id) AS purchase_count
-- FROM retail_sales
-- GROUP BY customer_id
-- ORDER BY purchase_count DESC;

-- SELECT 
-- customer_id,
-- COUNT(transaction_id) AS total_orders
-- FROM retail_sales
-- GROUP BY customer_id
-- HAVING COUNT(transaction_id) > 1;

-- SELECT 
-- AVG(total_amount) AS avg_order_value
-- FROM retail_sales;

-- SELECT 
-- customer_id,
-- SUM(total_amount) AS total_spent
-- FROM retail_sales
-- GROUP BY customer_id
-- ORDER BY total_spent DESC
-- LIMIT 5;

-- SELECT 
-- gender,
-- product_category,
-- SUM(quantity) AS total_sold
-- FROM retail_sales
-- GROUP BY gender, product_category
-- ORDER BY gender, total_sold DESC;

-- SELECT 
-- age,
-- SUM(total_amount) AS total_spent
-- FROM retail_sales
-- GROUP BY age
-- ORDER BY total_spent DESC;

SELECT * FROM retail_sales;