{% snapshot payments_snap %}

{{ 
    config(
    strategy= 'check',
    unique_key='id',
    check_cols=['first_name','last_name'],
    invalidate_hard_deletes=True
 )
 }}

select * from {{ source('datafeed_shared_schema','STG_CUSTOMERS') }}

{% endsnapshot %}  