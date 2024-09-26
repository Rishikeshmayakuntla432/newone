{{ config(materialized='table') }}

with rishi as (
    select p.payment_method,
           p.amount as price,
           s.order_date as recentdata,
           s.status,
           employees.customer_id
           from STG_ORDERS s left join STG_PAYMENTS p 
           left join employees e
           on s.user_id=p.order_id 
           on p.order_id=employees.customer_id
)
select * from rishi   