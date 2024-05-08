
with source as (
    select * from {{source('instacart_dump', 'payment')}}
), name_merge as (
    select payment_id,
    order_id,
    payment_date
from source 
)
select * from name_merge 