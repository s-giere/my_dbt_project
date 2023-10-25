select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    store_id as unique_field,
    count(*) as n_records

from dbt_dev_db.staging.stg_stores
where store_id is not null
group by store_id
having count(*) > 1



      
    ) dbt_internal_test