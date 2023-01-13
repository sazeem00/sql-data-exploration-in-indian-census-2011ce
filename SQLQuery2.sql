select*from [portfolio 2]..Data1
select * from [portfolio 2]..Sheet2


-- number of rows in data sets
select count(*) from [portfolio 2]..Data1
select count(*)from [portfolio 2]..Sheet2

---select the data set from jharkhand and bihar
select *
from [portfolio 2]..Data1
where state in ('jharkhand','bihar')

-- population of india 
select sum(population) as Population 
from [portfolio 2]..Sheet2

--avg growth
select state , avg(growth)*100 avg_growth
from [portfolio 2]..Data1
group by state 

--avg sex ratio
select state , avg(sex_ratio)*100 avg_sex_ratio
from [portfolio 2]..Data1
group by state
order by avg_sex_ratio
desc 

--top 3 state showing the highest growth ratio
select top 3 state , avg (growth)*100 avg_growth
from [portfolio 2]..Data1
group by state 
order by avg_growth desc 

-- state starting with latter a 
select distinct state 
from [portfolio 2]..Data1
where lower (state) like '%a' or lower (state) like '%b'