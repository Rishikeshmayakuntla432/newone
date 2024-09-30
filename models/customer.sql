{{ config(materialized='table') }}

with rishi as (
    select id from {{source('datafeed_shared_schema','STG_PAYMENTS')}})
 union  
   select id  from {{source('datafeed_shared_schema','STG_ORDERS')}}) 
           select * from rishi 