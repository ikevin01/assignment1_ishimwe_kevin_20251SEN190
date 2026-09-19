select c.customer_id,
       c.customer_name,
       o.order_id,
       o.order_date
  from customers c
  left join orders o
on c.customer_id = o.customer_id
 order by c.customer_id,
          o.order_id;