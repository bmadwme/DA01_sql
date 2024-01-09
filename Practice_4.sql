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
select round(100*
        sum(case
                when call_category is NULL or call_category = 'n/a' then 1
                else 0
            end)/sum(*),1)
from callers
-- ex4
select name from customer
where referee_id != 2 or referee_id is null
-- ex5
select survived,
sum(case
        when pclass = 1 then 1
        else 0
    end) as first_class,
sum(case
        when pclass = 2 then 1
        else 0
    end) as second_class,
sum(case
        when pclass = 3 then 1
        else 0
    end) as third_class
from titanic
group by survived
order by survived
