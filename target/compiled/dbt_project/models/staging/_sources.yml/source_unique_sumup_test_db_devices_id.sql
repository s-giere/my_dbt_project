
    
    

select
    id as unique_field,
    count(*) as n_records

from sumup_test_db.source_prod.devices
where id is not null
group by id
having count(*) > 1


