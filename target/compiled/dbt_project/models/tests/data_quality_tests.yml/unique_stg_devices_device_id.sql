
    
    

select
    device_id as unique_field,
    count(*) as n_records

from dbt_dev_db.staging.stg_devices
where device_id is not null
group by device_id
having count(*) > 1


