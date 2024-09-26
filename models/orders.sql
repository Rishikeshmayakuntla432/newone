{{ config(materialized='table') }}

with rishi as (
    select id, 
        user_id,
        order_date,
        status
        from {{source('datafeed_shared_schema','STG_ORDERS')}})
        select * from rishi 