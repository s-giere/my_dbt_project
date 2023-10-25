
  create or replace   view analytics.staging.stg_devices
  
   as (
    select
  id as device_id,
  type as device_type,
  store_id
from test_db.source_data.devices
  );

