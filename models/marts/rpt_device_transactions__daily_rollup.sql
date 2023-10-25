{{
    config(
        materialized='incremental',
        unique_key=['device_id', 'transaction_date']
    )
}}

with

device_transactions_agg as (

select
    device_id,
    transaction_date,
    sum(case when status = 'accepted' then amount end) as transaction_accepted__amount,
    sum(case when status = 'accepted' then 1 end) as transaction_accepted__count

from {{ ref("fct_transactions") }} as t

{% if is_incremental() %}

where transaction_date >= (select max(transaction_date) from {{ this }})

{% endif %}

group by 1, 2

),

final as (

select
    t.device_id,
    d.device_type,
    s.store_id,
    s.store_name,
    s.store_typology,
    s.store_country,
    t.transaction_date,
    t.transaction_accepted__amount,
    t.transaction_accepted__count

from device_transactions_agg as t
left join {{ ref("dim_devices") }} as d
    on t.device_id = d.device_id
left join {{ ref("dim_stores") }} as s
    on d.store_id = s.store_id

)

select * from final
