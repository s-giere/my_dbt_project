select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from dbt_hol_dev.trans.test2
where id is null



      
    ) dbt_internal_test