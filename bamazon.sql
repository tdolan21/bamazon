DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;
CREATE TABLE bamazon_db (
  id INT NOT NULL,
  product_name  VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price INT NOT NULL,
  stock_quantity INT(0, 100) NOT NULL,
 
  
);
SELECT * FROM bamazon_db;