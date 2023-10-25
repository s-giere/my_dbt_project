select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select transaction_order
from dbt_dev_db.intermediate.int_first_5_store_transactions
where transaction_order is null



      
    ) dbt_internal_test