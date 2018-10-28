DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;
CREATE TABLE bamazon_db (
  id INT NOT NULL ,
  product_name  VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price INT NOT NULL,
  stock_quantity INT(0, 100) NOT NULL,
 
  
);
SELECT * FROM bamazon_db;

INSERT INTO bamazon_db 
VALUES (1, "q-tips","household", 5, 10);
INSERT INTO bamazon_db 
VALUES (2,"water","essentials",3, 100);
INSERT INTO bamazon_db 
VALUES (3, "video games","electronics", 60, 20);
INSERT INTO bamazon_db 
VALUES (4,"headphones", "electronics", 100, 10);
INSERT INTO bamazon_db 
VALUES (5, "hat", "lifestyle",20, 10);