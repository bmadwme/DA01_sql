-- ex1
SELECT 
SUM(CASE
    WHEN device_type in ('laptop') then 1
    ELSE 0
END) as laptop_views,
SUM(CASE
    WHEN device_type in ('tablet','phone') then 1
    ELSE 0
END) as mobile_views
FROM viewership
-- ex2
select *,
    Case
     When x+y>z and x+z>y and y+z>x then 'Yes'
     Else 'No'
    End triangle
from Triangle
-- ex3

-- ex4
select name from customer
where referee_id != 2 or referee_id is null
-- ex5
