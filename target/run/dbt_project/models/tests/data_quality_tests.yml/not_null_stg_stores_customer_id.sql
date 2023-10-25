select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select customer_id
from dbt_dev_db.staging.stg_stores
where customer_id is null



      
    ) dbt_internal_test