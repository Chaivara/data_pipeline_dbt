select 
    o_orderkey,
    sum(extended_price) as gross_item_sales_amount,
    sum(discounted_amount) as item_discount_amount   --discounted_amount = item_discount_amount
from {{ ref('int_order_items') }}
group by 
o_orderkey