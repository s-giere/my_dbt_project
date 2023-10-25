select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select country
from dbt_hol_dev.trans.test2
where country is null



      
    ) dbt_internal_test