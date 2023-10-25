{{
    config(
        materialized='table'
    )
}}

with

lag_timestamp_calc as (

select
	store_id,
	transaction_at,
	lag(transaction_at) over (partition by store_id order by transaction_at) as lag_transaction_at
from {{ ref('int_first_5_store_transactions') }}

),

final as (

select
	store_id,

	case
		when count(*) = 5 then true
		else false
	end as has_at_least_5_accepted_transactions,
	avg(timestampdiff('minute', transaction_at, lag_transaction_at)) as avg_time_minutes_first_5_transactions
from lag_timestamp_calc
group by 1

)

select * from final
