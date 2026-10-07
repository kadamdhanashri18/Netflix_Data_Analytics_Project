create database netflix_db;
use netflix_db;
show tables;
select * from netflix_customers;

# Total Customers
select count(*) as Total_customers
from netflix_customers;

# Active Customers
select count(*) as Active_customers
from netflix_customers
where account_status = 'Active';

# Customer by subscription plan
select Subscription_Plan,count(*) as Customers
from netflix_customers
group by Subscription_Plan
order by customers desc;

# Revenue by subscription plan
select Subscription_Plan,
sum(Customer_Revenue) as Revenue
from netflix_customers
group by Subscription_Plan
order by Revenue desc;

# Popular Genres
select Genre,count(*) as views
from netflix_customers
group by Genre
order by views desc;

# Country wise Customers
select Country,count(*) as Customers
from netflix_customers
group by Country
order by Customers desc;

# Device Usage
select Device,count(*) as Users
from netflix_customers
group by Device
Order by Users desc;

# Average watch hours by plan
select Subscription_Plan,
round(avg(Watch_Hours),2) as Avg_Watch_Hours
from netflix_customers
group by Subscription_Plan;

# Top 10 Customers By Revenue
select Customer_name,
Customer_Revenue
from netflix_customers
order by Customer_Revenue desc
limit 10;

# Movie vs TV show
select Content_Type,
count(*) as Total
from netflix_customers
group by Content_Type;

# Average Rating by Genre
select 
Genre, round(avg(Avg_Rating),2) as Avg_Rating
from netflix_customers
group by Genre
order by Avg_Rating desc;

# Account Status
select Account_Status,
count(*) as Customers
from netflix_customers
group by Account_Status;

show databases;

