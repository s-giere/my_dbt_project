
  create or replace   view analytics.marts.dim_stores
  
   as (
    select
  *
from analytics.staging.stg_stores
  );

