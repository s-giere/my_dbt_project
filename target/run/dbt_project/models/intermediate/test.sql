
  create or replace   view analytics.intermediate.test
  
   as (
    select
  *
from sumup_test_db.source_prod.stores as d
  );

