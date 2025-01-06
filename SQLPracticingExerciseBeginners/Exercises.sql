CREATE TABLE Sales (
sale_id INT AUTO_INCREMENT NOT NULL,
producto_id INT,
quantity_sold INT,
sale_date DATE,
total_price DECIMAL(10, 2),
PRIMARY KEY(sale_id)
);
CREATE TABLE Products(
product_id INT auto_increment NOT NULL,
product_name VARCHAR(100),
category VARCHAR(40),
unit_prince DECIMAL(10, 2), 
primary KEY(product_id)
);
ALTER table Products CHANGE unit_prince unit_price DECIMAL(10, 2);
ALTER TABLE Sales CHANGE producto_id product_id INT;
INSERT INTO Sales( producto_id, quantity_sold, sale_date, total_price) VALUES(1, 5, "2025-01-05", 300.00);
INSERT INTO Sales(product_id, quantity_sold, sale_date, total_price) Values(2, 8, "2025-01-09", 700.00);
INSERT INTO Products(product_name, category, unit_price) VALUES ("Laptop Gamer", "Electronics", 4000.00);
INSERT INTO Products(product_name, category, unit_price) VALUES("Phone", "Electronics", 800.00);

SELECT 	product_name, unit_price FROM PRODUCTS;
SELECT sale_id, sale_date FROM Sales;
INSERT INTO Products ( product_name, category, unit_price) VALUES
('Laptop', 'Electronics', 500.00),
('Smartphone', 'Electronics', 300.00),
( 'Headphones', 'Electronics', 30.00),
( 'Keyboard', 'Electronics', 20.00),
('Mouse', 'Electronics', 15.00);
INSERT INTO Sales (product_id, quantity_sold, sale_date, total_price) VALUES
( 101, 5, '2024-01-01', 2500.00),
(102, 3, '2024-01-02', 900.00),
( 103, 2, '2024-01-02', 60.00),
( 104, 4, '2024-01-03', 80.00),
( 105, 6, '2024-01-03', 90.00);

SELECT * FROM Sales WHERE total_price > 100;
SELECT * FROM Products WHERE Category = "Electronics";
SELECT sale_id, total_price FROM Sales WHERE sale_date = "2024-01-03";