{% snapshot check_snap %}

{{ 
    config(strategy='check',
unique_key='id',
check_cols=['user_id','order_date','status'],
) }}

select * from {{source('datafeed_shared_schema','STG_ORDERS')}} 

{% endsnapshot %}