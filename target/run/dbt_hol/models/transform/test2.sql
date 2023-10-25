
  
    

        create or replace transient table dbt_hol_prod.trans.test2
         as
        (

select
  *
from dbt_hol_prod.trans.test
limit 10
        );
      
  