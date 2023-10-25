select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select store_id
from dbt_dev_db.marts.rpt_store_initial_efficiency
where store_id is null



      
    ) dbt_internal_test