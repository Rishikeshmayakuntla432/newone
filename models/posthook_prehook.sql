{{ config(materialized='table',
pre_hook = "TRUNCATE TABLE {{ this }}",
post_hook = "TRUNCATE TABLE {{ref('customer')}}"
) }}

with rishi as (
    select * from {{ref('customer')}}
)

select * from rishi 