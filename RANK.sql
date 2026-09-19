with customer_totals as (
   select c.customer_id,
          c.customer_name,
          sum(oi.quantity * p.price) as total_spend
     from customers c
     join orders o
   on c.customer_id = o.customer_id
     join order_items oi
   on o.order_id = oi.order_id
     join products p
   on oi.product_id = p.product_id
    group by c.customer_id,
             c.customer_name
)
select customer_id,
       customer_name,
       total_spend,
       rank()
       over(
           order by total_spend desc
       ) as spend_rank
  from customer_totals
 order by spend_rank;