select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select address
from dbt_hol_dev.trans.test
where address is null



      
    ) dbt_internal_test