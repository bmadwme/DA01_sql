-- ex1
select Name from STUDENTS where Marks>75
order by right(Name,3), ID
-- ex2
select user_id, concat(upper(left(name,1)),lower(right(name,(length(name)-1)))) as name from Users 
order by user_id
-- ex3
select manufacturer, concat('$',round(sum(total_sales)/1000000),' million') as sale from pharmacy_sales
group by manufacturer
order by sum(total_sales) desc,manufacturer
-- ex4
SELECT extract (month from submit_date) as mth,
product_id as product,
round(avg(stars),2) as avg_stars FROM reviews
group by mth, product_id
order by mth, product_id;
--  ex5
select sender_id,
count(message_id) as message_count from messages
where sent_date between '08/01/2022' and '09/01/2022'
group by sender_id
order by message_count desc
limit 2
-- ex6
select tweet_id from Tweets where char_length(content)>15
-- ex7
select activity_date as day, count(distinct user_id) as active_users from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
having active_users >0
-- ex8
select count(id) as number_of_hire from employees
where joining_date between '2022-01-01' and '2022-08-01'
-- ex9
select position('a' in first_name) from worker
where first_name = 'Amitah'
-- ex10
select title as wine,
substr(title,length(winery)+2,4) as year from winemag_p2
where country='Macedonia'
