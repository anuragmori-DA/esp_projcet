use olist_project;



CREATE TABLE order_items (
    order_id VARCHAR(50),
    order_item_id INT,
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    shipping_limit_date DATETIME,
    price DECIMAL(10,2),
    Freight_value DECIMAL(10,2),
    Total_item_value DECIMAL(10,2),
    Freight_percent DECIMAL(5,2),
    Price_Band VARCHAR(20)
);

select * from order_items;

-- Avg Product price

select round(avg(price),2)
as average_price
from order_items;

-- total revenue

select round(sum( Total_item_value),2)
as revenue
from order_items;

-- top 10 selling products

select product_id
from order_items
limit 10;



