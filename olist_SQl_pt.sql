create database olist_project;
use olist_project;


select * from customers;

ALTER TABLE olist_customers_pt RENAME TO customers;


-- Total customers

select	count(*) as Total_customers from customers;

-- check duplicates

select customer_id, count(*)
from customers
group by customer_id
having count(*)>1;

-- state

select customer_state,
count(*) as customers from customers
group by customer_state
order by customers desc;

-- region

select customer_region,
count(*) as customers from customers
group by customer_region;



