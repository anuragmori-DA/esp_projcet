use olist_project;

CREATE TABLE olist_orders_pt (
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    order_status VARCHAR(30),
    order_purchase_timestamp DATETIME,
    order_approved_at DATETIME,
    order_delivered_carrier_date DATETIME,
    order_delivered_customer_date DATETIME,
    order_estimated_delivery_date DATETIME,
    Purchase_Year INT,
    Purchase_Year2 INT,
    Purchase_Month VARCHAR(20),
    Approval_Days INT,
    Delivery_Days INT,
    Estimated_Delivery_Days INT,
    Delivery_Dealy_Days INT,
    Delivery_Status VARCHAR(20)
);

select * from olist_orders_pt;

ALTER TABLE olist_orders_pt RENAME column Purchase_Year to Purchase_dates;


-- Total orders

select count(*) as total_orders from olist_orders_pt;

-- status

select order_status, 
count(*) as olist_orders_pt from olist_orders_pt
group by order_status
order by olist_orders_pt desc;

-- year

select purchase_dates, 
count(*) as olist_orders_pt
from olist_orders_pt
group by purchase_dates;

-- month

select purchase_month,
count(*) as olist_orders_pt
from olist_orders_pt
group by Purchase_Month;

-- average

SELECT AVG( Delivery_Days) AS Average_Days FROM olist_orders_pt;

-- Delayed

select count(*) as Delivery_Delays_Days
from olist_orders_pt
where Delivery_Status='Delayed';




