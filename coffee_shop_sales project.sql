USE coffee_sales;
-- q1 total revenue 
SELECT round(SUM(transaction_qty * unit_price), 2) AS revenue FROM coffee_sales;
-- q2 revenue by store location
SELECT store_location, round(SUM(transaction_qty * unit_price), 2) AS revenue FROM coffee_sales
group by store_location
order by revenue DESC;
-- q3 top 10 selling products
SELECT product_type, SUM(transaction_qty) AS total_sold FROM coffee_sales
group by product_type 
order by total_sold DESC
LIMIT 10;
-- q4 mothly sales
select SUBSTRING(transaction_date, 4, 2) AS month, round(SUM(transaction_qty * unit_price), 2) AS monthly_revenue from coffee_sales
GROUP BY month
ORDER BY month;
-- q5 sales by product category
SELECT product_category, round(SUM(transaction_qty * unit_price), 2) AS revenue FROM coffee_sales
group by product_category
order by revenue DESC;
-- q6 peak hour analsys
select hour(transaction_time) AS hour, count(*) AS total_orders from coffee_sales
group by hour(transaction_time)
order by hour(transaction_time) DESC;



