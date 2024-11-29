/*
Create sales table with sale_id as the primary key
*/

CREATE TABLE IF NOT EXISTS Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10,2)
);

/*
Create product table with product_id as the primary key
*/

CREATE TABLE IF NOT EXISTS Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10,2)
)