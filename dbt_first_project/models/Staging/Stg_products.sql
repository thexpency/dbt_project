
with source as (
    select * from {{source('instacart_dump', 'products')}}
), name_merge as (
    select product_id,
    product_name,
    aisle_id,
    department_id,
    unit_price,
    unit_cost,
    product_category
from source 
)
select * from name_merge 