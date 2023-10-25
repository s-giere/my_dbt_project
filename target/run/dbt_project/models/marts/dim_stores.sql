
  create or replace   view dbt_dev_db.marts.dim_stores
  
   as (
    select
  *
from dbt_dev_db.staging.stg_stores
  );

