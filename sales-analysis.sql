-- Data Understanding------------------------
SELECT * FROM supermart LIMIT 0;

--How many total records are in the dataset?
select count(row_id) as "Total_Records" from supermart;

--How many unique orders exist?
select count(distinct(order_id)) as "Total_Unique_Orders" from supermart;

--How many unique customers exist?
select count(distinct(customer_id)) as "Total_Customers" from supermart;

--How many unique products exist?
select count(distinct(product_id)) as "Total_Products" from supermart;

----Which columns contain NULL values?
SELECT
    COUNT(*) FILTER (WHERE order_id IS NULL) AS order_id_nulls,
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS customer_id_nulls,
    COUNT(*) FILTER (WHERE sales IS NULL) AS sales_nulls,
    COUNT(*) FILTER (WHERE profit IS NULL) AS profit_nulls
FROM supermart;

--How many records belong to each segment?
select segment,count(segment) from supermart group by segment;

--How many records belong to each region?
select region,count(region) from supermart group by region;
--How many categories and sub-categories exist?
select count(distinct(category)) as "Total_Categories", count(distinct("sub-category")) as "Total_sub-categories" from supermart;

--What is the date range of the dataset?
select min(order_date) as "First_date", max(order_date) as "Last_Date" from supermart;

--Which city appears most frequently?
with city_counts as(
select city,count(*)as city_count
from supermart
group by city
)
select city,city_count
from city_counts 
where city_count=(
select max(city_count)
from city_counts
);

--Does one order contain multiple products?
SELECT order_id,
       COUNT(*)
FROM supermart
GROUP BY order_id
HAVING COUNT(*) > 1;

--How many loss-making transactions exist?
select count(*) from supermart where profit < 0;

--What discount range exists?
SELECT MIN(discount),MAX(discount),AVG(discount) FROM supermart;

--Are there a few huge orders skewing revenue?
SELECT MIN(sales),MAX(sales),AVG(sales) FROM supermart;

-- Sales Analysis---------------------------------------------------