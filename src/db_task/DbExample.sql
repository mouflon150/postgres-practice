package db_task;

CREATE TABLE products
(
    id           SERIAL PRIMARY KEY,
    product_name VARCHAR(20) NOT NULL,
    manufacturer VARCHAR(30) NOT NULL,
    product_count INTEGER DEFAULT 0,
    price        NUMERIC
);

INSERT INTO products(product_name, manufacturer, product_count, price)
VALUES
('IPhone X', 'Aple', 2, 70000),
('IPhone 8', 'Aple', 3, 56000),
('Galaxy s9', 'Samsung', 6, 56000),
('Galaxy s8 Plus', 'Samsung', 2, 46000),
('Desire 12', 'HTC', 3, 26000);

SELECT *
FROM products;

SELECT *
FROM products
WHERE manufacturer = 'Samsung';

SELECT *
FROM products
WHERE manufacturer = 'Aple';

SELECT *
FROM products
WHERE manufacturer = 'Aple' AND price > 60000;

SELECT *
FROM products
WHERE product_name LIKE 'IPhone%';

SELECT manufacturer
FROM products;

SELECT DISTINCT manufacturer
FROM products;

SELECT *
FROM products
ORDER BY product_count;

SELECT product_name, manufacturer
FROM products
ORDER BY manufacturer DESC;

SELECT product_name, price, manufacturer
FROM products
ORDER BY manufacturer, product_name;

SELECT *
FROM products
ORDER BY product_name
LIMIT 2;

SELECT *
FROM products
ORDER BY product_name
LIMIT ALL OFFSET 2;

SELECT *
FROM products
WHERE manufacturer IN ('Samsung', 'HTC', 'Huawei');

SELECT *
FROM products
WHERE price BETWEEN 20000 AND 50000;

SELECT sum(product_count)
FROM products;

SELECT avg(price) AS average_price
FROM products;

SELECT COUNT(*)
FROM products;

SELECT MIN(price)
FROM products;

SELECT MAX(price)
FROM products;

SELECT manufacturer, COUNT(*) AS models_count
FROM products
GROUP BY manufacturer;

SELECT manufacturer, COUNT(*) AS models_count
FROM products
GROUP BY manufacturer
HAVING COUNT(*) > 1;