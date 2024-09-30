{{ config(materialized='view') }}

with cte as (
    select * from {{ref('payments_snap')}}
)

select * from cte where DBT_VALID_TO is not null 