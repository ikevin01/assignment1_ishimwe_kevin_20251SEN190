select oi.order_item_id,
       oi.order_id,
       p.product_name,
       p.category,
       p.price,
       oi.quantity
  from order_items oi
  join products p
on oi.product_id = p.product_id
 order by oi.order_item_id;