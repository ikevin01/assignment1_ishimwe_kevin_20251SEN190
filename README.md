I aggregated daily revenue in a CTE
and used SUM(daily_total)
OVER (ORDER BY order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
to produce a cumulative running total of store revenue
across chronological order dates.

I used the LAG() analytic function partitioned
by customer_id to retrieve the preceding order
date for each purchase. Subtracting prev_order_date
from order_date calculates the elapsed days
between repeat visits, filtering
out initial orders where no prior date exists.

but some of the queries were not working as because of my pc but here are
some of the screenshoot of script that I have written and executed successfully.

![Query 1 Result](images/screenshot1.png)

![Query 2 Result](images/screenshot2.png)

my pc was lagging i didn't get any chance to run every script but i hope they can run successfully

