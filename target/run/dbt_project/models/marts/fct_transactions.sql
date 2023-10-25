
  create or replace   view analytics.marts.fct_transactions
  
   as (
    select
  *
from analytics.staging.stg_transactions as t
  );

