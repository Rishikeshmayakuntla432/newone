{{ config(materialized='table') }}

with rishi as (

    select id,
     order_date,
        status,
        user_id,
        ({{ friday ('id','user_id') }}) as newamount
        from {{source('datafeed_shared_schema','STG_ORDERS')}})

select * from rishi      