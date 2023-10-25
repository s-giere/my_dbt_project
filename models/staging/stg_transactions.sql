select
  id as transaction_id,
  device_id,
  amount as amount_cents,
  amount / 100 as amount,
  status,
  happened_at as transaction_at,
  date(happened_at) as transaction_date
from {{source('test_db','transactions')}}
