select * from super_store_1

--To check order id is primary key or not
select order_id from super_store_1
group by order_id
having count(order_id)>1
--Not a primary key


--Product with maximum profit
select product_name,sum(profit) as total_profit from super_store_1
group by product_name
order by total_profit desc

--Ship mode total by class
select ship_mode, count(ship_mode) as total_ship from super_store_1
group by ship_mode


--Order made between date :01-01-13 to 01-03-13
select order_id, count(order_id) from super_store_1
where order_date between '01-01-13' and '01-03-13'
group by order_id


--Customer id with maximum profit
select customer_id,sum(profit) as total_profit
from super_store_1
group by customer_id
order by total_profit desc

--Total profit by catagory
select category,sum(profit) as total_profit
from super_store_1
group by category
order by total_profit desc


--Toatal profit by sub catagory
select sub_category,sum(profit) as total_profit
from super_store_1
group by sub_category
order by total_profit desc



