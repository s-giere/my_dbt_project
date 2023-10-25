
    
    

with child as (
    select id as from_field
    from dbt_hol_dev.trans.test2
    where id is not null
),

parent as (
    select address as to_field
    from dbt_hol_dev.trans.test
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


