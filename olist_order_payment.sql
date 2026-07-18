use olist_project;


CREATE TABLE order_payment (
    Order_id VARCHAR(50),
    payment_sequential INT,
    payment_type VARCHAR(20),
    payment_installments INT,
    payment_value DECIMAL(10,2),
    Installment_value DECIMAL(10,2),
    Payment_Size VARCHAR(20)
);


select * from order_payments;

-- Revenue by payment

select   SUM(payment_value) AS order_payment
from order_payments
group by payment_type;

-- avg payment

select round(avg(payment_value),2) 
from order_payments;

-- installment

select Installment_value,
count(*) as orders_payment
from order_payments
group by Installment_value;