
    
    

select
    transaction_id as unique_field,
    count(*) as n_records

from dbt_dev_db.intermediate.int_first_5_store_transactions
where transaction_id is not null
group by transaction_id
having count(*) > 1


