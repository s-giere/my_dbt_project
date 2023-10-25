
  create or replace   view dbt_dev_db.marts.fct_transactions
  
   as (
    select
  *
from dbt_dev_db.staging.stg_transactions as t
  );

