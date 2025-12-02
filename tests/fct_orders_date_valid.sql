select * from {{ ref('fct_orders') }}
where 
date(o_orderdate) > current_date()
or date(o_orderdate) < date('1990-01-01')