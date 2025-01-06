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