
  
    

        create or replace transient table analytics.trans.test
         as
        (
select
  src.*
from sumup_test_db.source_prod.stores as src
        );
      
  