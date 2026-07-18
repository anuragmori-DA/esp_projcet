use olist_project;


CREATE TABLE products (
    product_id VARCHAR(50),
    product_category_name VARCHAR(100),
    product_name_lenght INT,
    product_description_lenght INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm DECIMAL(6,2),
    product_height_cm DECIMAL(6,2),
    product_width_cm DECIMAL(6,2),
    Product_volume DECIMAL(10,2),
    Weight_category VARCHAR(20),
    Product_size VARCHAR(20)
);

select * from products;

-- total products

SELECT COUNT(*) AS total_products
FROM products;

-- Products by Category

SELECT product_category_name,
COUNT(*) AS total_products
FROM products
GROUP BY product_category_name
ORDER BY total_products DESC;

-- Average Product Weight

SELECT AVG(product_weight_g) AS avg_weight
FROM products;

-- Heavy Products >1000

SELECT *
FROM products
WHERE product_weight_g > 1000;
