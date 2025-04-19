CREATE DATABASE salesdb;
USE salesdb;

-- TASK 1
CREATE TABLE product_tbl(
id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
price DECIMAL CHECK (price > 0) -- TASK 2
);

-- TASK 4
ALTER TABLE product_tbl MODIFY COLUMN product_name VARCHAR(120);
