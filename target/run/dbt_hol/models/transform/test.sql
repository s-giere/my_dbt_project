
  
    

        create or replace transient table dbt_hol_prod.trans.test
         as
        (
select
  src.*
from sumup_test_db.source_prod.stores as src
        );
      
  