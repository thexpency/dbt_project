
with source as (
    select * from {{source('instacart_dump', 'department')}}
), name_merge as (
    select department_id,
    department
from source 
)
select * from name_merge 