select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    transaction_id as unique_field,
    count(*) as n_records

from dbt_dev_db.intermediate.int_first_5_store_transactions
where transaction_id is not null
group by transaction_id
having count(*) > 1



      
    ) dbt_internal_test