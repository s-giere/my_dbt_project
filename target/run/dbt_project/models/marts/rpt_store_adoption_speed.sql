
  create or replace   view analytics.marts.rpt_store_adoption_speed
  
   as (
    with

store_agg as (

select
	s.store_id,
	min(case when st.transaction_order = 1 then st.transaction_at end) as first_transaction_at,
	min(case when st.transaction_order = 5 then st.transaction_at end) as fifth_transaction_at
from analytics.staging.stg_stores as s
left join analytics.intermediate.int_store_transactions as st
	on s.store_id = st.store_id
group by 1

),

final as (

select
	store_id,
	first_transaction_at,
	fifth_transaction_at,
	date(fifth_transaction_at) - date(first_transaction_at) as adoption_speed_days
from store_agg

)

select * from final
  );

