select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id||country
from dbt_hol_dev.trans.test
where id||country is null



      
    ) dbt_internal_test