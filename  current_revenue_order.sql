with customer_orders as (
   select customer_id,
          order_id,
          order_date,
          lag(order_date)
          over(partition by customer_id
               order by order_date
          ) as prev_order_date
     from orders
)
select customer_id,
       order_id,
       order_date,
       prev_order_date,
       ( order_date - prev_order_date ) as days_between
  from customer_orders
 where prev_order_date is not null
 order by customer_id,
          order_date;