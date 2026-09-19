select customer_id,
       order_id,
       order_date,
       row_number()
       over(partition by customer_id
            order by order_date,
                     order_id
       ) as order_sequence
  from orders
 order by customer_id,
          order_sequence;