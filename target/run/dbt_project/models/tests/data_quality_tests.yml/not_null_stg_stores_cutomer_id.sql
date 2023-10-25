select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select cutomer_id
from dbt_dev_db.staging.stg_stores
where cutomer_id is null



      
    ) dbt_internal_test