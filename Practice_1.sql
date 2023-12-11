-- ex1
Select NAME From CITY Where POPULATION > 120000 And COUNTRYCODE = 'USA';
-- ex2
Select * from CITY where COUNTRYCODE = 'JPN';
-- ex3
Select CITY, STATE from STATION;
-- ex4
Select distinct CITY from STATION 
where CITY like 'A%'
or CITY like 'O%'
or CITY like 'E%'
or CITY like 'I%'
or CITY like 'U%'
-- ex5
Select distinct CITY from STATION 
where CITY like '%A'
or CITY like '%O'
or CITY like '%E'
or CITY like '%I'
or CITY like '%U'
-- ex6
Select distinct CITY from STATION 
where not (CITY like 'A%'
or CITY like 'O%'
or CITY like 'E%'
or CITY like 'I%'
or CITY like 'U%')
-- ex7
select name from Employee order by name asc;
-- ex8
select name from Employee where salary > 2000 and months < 10 order by employee_id asc;
-- ex9
select product_id from Products where low_fats = 'Y' and recyclable = 'Y';
-- ex10
select name from Customer where referee_id!=2 or referee_id is NULL
-- ex11
select name,population,area from World where area>=3000000 or population>=25000000 
-- ex12
select distinct author_id as id from Views where viewer_id=author_id order by author_id asc
-- ex13
SELECT part,assembly_step FROM parts_assembly where finish_date is NULL;
-- ex14
select * from lyft_drivers where yearly_salary<=30000 or yearly_salary>=70000;
-- ex15
select advertising_channel from uber_advertising where year=2019 and money_spent>100000;
