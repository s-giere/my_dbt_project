
    
    

select
    store_id as unique_field,
    count(*) as n_records

from dbt_dev_db.marts.rpt_store_initial_efficiency
where store_id is not null
group by store_id
having count(*) > 1


