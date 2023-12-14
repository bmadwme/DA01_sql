-- ex1
select distinct CITY from STATION where ID%2=0
-- ex2
select count(CITY)-count(distinct CITY) from STATION
-- ex3
select ceil(avg(Salary)-avg(replace(Salary,'0',''))) from EMPLOYEES







