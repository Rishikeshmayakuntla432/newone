{{ config(materialized='table') }}

with rishi as (
    select id, 
        order_id,
        payment_method,
        amount
        from {{source('datafeed_shared_schema','STG_PAYMENTS')}})
        select * from rishi 