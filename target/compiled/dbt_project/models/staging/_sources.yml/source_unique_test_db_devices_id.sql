
    
    

select
    id as unique_field,
    count(*) as n_records

from test_db.source_data.devices
where id is not null
group by id
having count(*) > 1


