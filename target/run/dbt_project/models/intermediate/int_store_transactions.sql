
  create or replace   view analytics.intermediate.int_store_transactions
  
   as (
    select
	d.store_id,
  t.device_id,
  t.transaction_id,
  t.transaction_at,
	row_number() over (partition by d.store_id order by t.transaction_at) as transaction_order

from analytics.staging.stg_transactions as t
left join analytics.staging.stg_devices as d
	on t.device_id = d.device_id
  );

