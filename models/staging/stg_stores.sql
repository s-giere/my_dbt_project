select
  id as store_id,
  name as store_name,
  typology as store_typology,
  customer_id,
  address as store_address,
  city as store_city,
  country as store_country
from {{source('test_db','stores')}} as s
