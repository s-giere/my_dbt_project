
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from sumup_test_db.source_prod.transactions
    group by status

)

select *
from all_values
where value_field not in (
    'accepted','refused','cancelled'
)


