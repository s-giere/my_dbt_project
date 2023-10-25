
  create or replace   view analytics.staging.stg_stores
  
   as (
    select
  id as store_id,
  name as store_name,
  typology as store_typology,
  customer_id,
  address as store_address,
  city as store_city,
  country as store_country
from test_db.source_data.stores as s
  );

