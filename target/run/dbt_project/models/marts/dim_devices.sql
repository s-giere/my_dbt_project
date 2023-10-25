
  create or replace   view dbt_dev_db.marts.dim_devices
  
   as (
    select
  *
from dbt_dev_db.staging.stg_devices
  );

