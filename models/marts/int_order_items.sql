select 
    line_item.order_item_key,
    line_item.part_key,
    line_item.line_number,
    line_item.extended_price,
    orders.o_orderkey,
    orders.o_custkey,
    orders.o_orderdate,
    {{ discounted_amount('line_item.extended_price', 'line_item.discount') }} as discounted_amount
from {{ ref('stg_tpch_lineitem') }} as line_item
join {{ ref('stg_tpch_orders') }} as orders on line_item.order_key = orders.o_orderkey
order by orders.o_orderdate