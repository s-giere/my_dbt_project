
  create or replace   view dbt_dev_db.staging.stg_transactions
  
   as (
    select
  id as transaction_id,
  device_id,
  amount as amount_cents,
  amount / 100 as amount,
  status,
  happened_at as transaction_at,
  date(happened_at) as transaction_date
from test_db.source_data.transactions
  );

