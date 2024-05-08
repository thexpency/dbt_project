
with source as (
    select * from {{source('instacart_dump', 'credit_card')}}
), name_merge as (
    select card_number,
    customer_id,
    card_expiry_date,
    bank_name
from source 
)
select * from name_merge 