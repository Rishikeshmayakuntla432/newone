{{ config(materialized='table') }}

with rishi as (
    select * from {{source('datafeed_shared_schema','STG_PAYMENTS')}}
)

select * from rishi 