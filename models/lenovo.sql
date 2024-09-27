with source_data as (
    select *
    from {{ ref('STG_ORDERS') }}
)

select
    {{ sum_column('source_data', 'user_id') }} as total_sum
from source_data
