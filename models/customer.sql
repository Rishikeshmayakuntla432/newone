{{ config(
    materialized='table',
) }}

with rishi as (
    select * from {{ source('datafeed_shared_schema', 'DIMCUSTOMERS') }}
)

select * from rishi 
 