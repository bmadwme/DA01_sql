-- ex1
select distinct CITY from STATION where ID%2=0
-- ex2
select count(CITY)-count(distinct CITY) from STATION
-- ex3
select ceil(avg(Salary)-avg(replace(Salary,'0',''))) from EMPLOYEES
-- ex4
SELECT round(sum(item_count::decimal*order_occurrences)/sum(order_occurrences),1) FROM items_per_order;
-- ex5
SELECT candidate_id FROM candidates
WHERE skill IN ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id HAVING COUNT(skill)=3
ORDER BY candidate_id;
-- ex6
SELECT user_id, date(max(post_date))-date(min(post_date)) AS days_between
FROM posts
WHERE post_date BETWEEN '01/01/2021' AND '01/01/2022'
GROUP BY user_id HAVING COUNT(post_id)>=2
-- ex7
SELECT card_name, max(issued_amount)-min(issued_amount) AS difference FROM monthly_cards_issued
GROUP BY card_name ORDER BY difference DESC
-- ex8
SELECT manufacturer, COUNT(drug) AS drug_count, SUM(cogs-total_sales) AS total_loss
FROM pharmacy_sales WHERE cogs-total_sales>0
GROUP BY manufacturer ORDER BY total_loss DESC
-- ex9
Select * from Cinema
where id%2=1 and not description='boring'
order by rating desc
-- ex10
select teacher_id, count(distinct subject_id) as cnt from Teacher
group by teacher_id
-- ex11
select user_id, count(follower_id) as followers_count from Followers
group by user_id order by user_id
-- ex12
select class from Courses
group by class having count(student)>=5
