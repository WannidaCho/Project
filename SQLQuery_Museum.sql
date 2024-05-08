
--How many artists's nationality in each of the country?
Select nationality ,count(nationality) as count_nationality
From Project.dbo.artist
group by nationality
order by 1 asc

--Top 10 Best Seller Picture
Select top 10 work_id,count(work_id) as count_work_id
from Project.dbo.product_size
group by work_id
order by count_work_id desc

--Top 5 Best seller picture's style
select Top 5 style ,count(style) as Count_style
from Project.dbo.artist
group by style
order by 2 desc

--Average Prices of pictures group by work id
Select work_id,avg(regular_price) as avg_price,avg(sale_price) as avg_saleprice,count(work_id) as work_id_sales_amount
from Project.dbo.product_size
group by work_id
order by avg_price desc,avg_saleprice desc

--Max and Min Prices
Select	max(regular_price) as max_price,
		min(regular_price) as min_price
from Project.dbo.product_size

--Forecast total sales if every work_id was sold
select sum(regular_price) as total_sales
from Project.dbo.product_size

--Most of the museums in each of the country?
Select country, count(country) as museum_country
from Project.dbo.museum
group by country
order by museum_country desc

--The museums in each of city in USA
Select name,city,state
from project.dbo.museum
where country = 'USA'

--Artist's Picture in Top 3 Best Seller
Select Project.dbo.artist.artist_id, Project.dbo.artist.full_name, Project.dbo.work.work_id
From Project.dbo.artist INNER JOIN Project.dbo.work
On Project.dbo.artist.artist_id = Project.dbo.work.artist_id
where work_id in (194074,23448,194101);



