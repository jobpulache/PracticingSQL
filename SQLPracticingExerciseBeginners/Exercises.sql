CREATE TABLE Sales (
sale_id INT AUTO_INCREMENT NOT NULL,
producto_id INT,
quantity_sold INT,
sale_date DATE,
total_price DECIMAL(10, 2)
);
CREATE TABLE Products(
product_id INT auto_increment NOT NULL,
product_name VARCHAR(100),
category VARCHAR(40),
unit_prince DECIMAL(10, 2)
);