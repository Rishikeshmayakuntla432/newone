{{ config(materialized='table') }}

with rishi as (
    select c.first_name,c.last_name,p.payment_method,p.amount,o.order_date,o.status from STG_CUSTOMERS c 
    join STG_PAYMENTS p 
    on c.id=p.id 
    join STG_ORDERS o
    on p.id=o.id )

    select * from rishi 