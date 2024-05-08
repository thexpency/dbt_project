
with source as (
    select * from {{source('instacart_dump', 'aisles')}}
), name_merge as (
    select aisle_id,
    aisle
from source 
)
select * from name_merge 