select
    customerid,
    segment,
    country,
sum(orderporfit) as profit
from {{ ref('stg_orders') }}
group by 
    customerid,
    segment,
    country