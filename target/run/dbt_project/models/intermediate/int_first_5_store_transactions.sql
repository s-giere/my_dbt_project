
  
    

        create or replace transient table dbt_dev_db.intermediate.int_first_5_store_transactions
         as
        (

select
	d.store_id,
  t.transaction_id,
  t.transaction_at,
	row_number() over (partition by d.store_id order by t.transaction_at) as transaction_order

from dbt_dev_db.staging.stg_transactions as t
left join dbt_dev_db.staging.stg_devices as d
	on t.device_id = d.device_id
where t.status = 'accepted'
qualify row_number() over (partition by d.store_id order by t.transaction_at) <= 5
        );
      
  