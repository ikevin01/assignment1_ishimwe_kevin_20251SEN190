with daily_revenue as (
   select o.order_date,
          sum(oi.quantity * p.price) as daily_total
     from orders o
     join order_items oi
   on o.order_id = oi.order_id
     join products p
   on oi.product_id = p.product_id
    group by o.order_date
)
select order_date,
       daily_total,
       sum(daily_total)
       over(
           order by order_date
          rows between unbounded preceding and current row
       ) as running_revenue
  from daily_revenue
 order by order_date;