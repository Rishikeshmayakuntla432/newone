{{ config(materialized='Table') }}

with rishi as (
    select * from {{source('datafeed_shared_schema','DIMEMPLOYEE')}}
)

select * from rishi 