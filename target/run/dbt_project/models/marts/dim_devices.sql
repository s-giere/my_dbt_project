
  create or replace   view analytics.marts.dim_devices
  
   as (
    select
  *
from analytics.staging.stg_devices
  );

