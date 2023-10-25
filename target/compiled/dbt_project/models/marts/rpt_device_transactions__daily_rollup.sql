

with

device_transactions_agg as (

select
    device_id,
    transaction_date,
    sum(case when status = 'accepted' then amount end) as transaction_accepted__amount,
    sum(case when status = 'accepted' then 1 end) as transaction_accepted__count

from dbt_dev_db.marts.fct_transactions as t



where transaction_date >= (select max(transaction_date) from dbt_dev_db.marts.rpt_device_transactions__daily_rollup)



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
left join dbt_dev_db.marts.dim_devices as d
    on t.device_id = d.device_id
left join dbt_dev_db.marts.dim_stores as s
    on d.store_id = s.store_id

)

select * from final