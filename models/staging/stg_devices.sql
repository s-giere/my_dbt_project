select
  id as device_id,
  type as device_type,
  store_id
from {{source('test_db','devices')}}
