
  
    

        create or replace transient table analytics.trans.test2
         as
        (

select
  *
from analytics.trans.test
limit 10
        );
      
  