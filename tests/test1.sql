select order_id,payment_method, sum(amount) as rishi from RISHI.DBT_SOURCE.STG_PAYMENTS group by 
order_id,payment_method
having rishi <0 