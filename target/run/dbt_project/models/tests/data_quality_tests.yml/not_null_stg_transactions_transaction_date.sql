select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select transaction_date
from dbt_dev_db.staging.stg_transactions
where transaction_date is null



      
    ) dbt_internal_test