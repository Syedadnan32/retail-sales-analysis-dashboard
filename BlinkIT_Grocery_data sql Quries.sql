-- table creation 
drop table BlinkIT_Grocery_data
create table BlinkIT_Grocery_data
  (Item_Fat_Content	  varchar(50) not null,
  Item_Identifier varchar(50) not null,
  Item_Type varchar(50) not null,
  Outlet_Establishment_Year	 integer not null,
  Outlet_Identifier	  varchar(50) not null,
  Outlet_Location_Type	varchar(50) not null,
  Outlet_Size   varchar(50) not null,
  Outlet_Type	varchar(50) not null,
  Item_Visibility	float not null,
  Item0Weight	float not null,
  Sales	 float not null,
  Rating  float not null
  );


-- table view 
select * from BlinkIT_Grocery_data;

--Data Exploring
1. select count(*) from BlinkIT_Grocery_data;

2. select  item_fat_content from BlinkIT_Grocery_data
   group by item_fat_content;

3. select  item_type from BlinkIT_Grocery_data
   group by item_type 
   order by item_type asc;

4. select  outlet_establishment_year from BlinkIT_Grocery_data
   group by  outlet_establishment_year
   order by outlet_establishment_year asc;

5. select  outlet_type from BlinkIT_Grocery_data
   group by  outlet_type;

6. select  outlet_location_type from BlinkIT_Grocery_data
   group by  outlet_location_type;

7. select  outlet_size from BlinkIT_Grocery_data
   group by  outlet_size ;


--DATA ANALYSIS 

--count of orders 
 select count(*) from BlinkIT_Grocery_data;

-- count of items with fat content and regular 
   select item_fat_content, count (*) as total from BlinkIT_Grocery_data
   group by  item_fat_content
   order by total desc;
   
--count oforders from outlet with locations 
select outlet_type,outlet_location_type, count (*) as total from BlinkIT_Grocery_data
   group by  outlet_type,outlet_location_type
   order by total desc
   limit 5 ;
-- orders by item type 
select outlet_type, count (*) as total from BlinkIT_Grocery_data
   group by  outlet_type
   order by total desc
   limit 5 ;
-- yearly orders placed 
select outlet_establishment_year, count (*) as total from BlinkIT_Grocery_data
   group by  outlet_establishment_year
   order by outlet_establishment_year ;
   
-- avg ration of orders 
select avg(rating) as avg_rating from BlinkIT_Grocery_data;

-- top 5 items oredered items with rating 
select item_type,rating,count(*)as total from BlinkIT_Grocery_data
group by item_type,rating 
order by total desc 
 limit 5 ;
-- mostly ordered item 
select item_type,count(*)as total from BlinkIT_Grocery_data
group by item_type
order by total desc;
-- top 3 sales of item type 
  select item_type,round(sum(sales))as total_sales from BlinkIT_Grocery_data
group by item_type
order by total_sales desc 
limit 3;

-- sum of total orders  
select round(sum(sales))as total_sales from BlinkIT_Grocery_data;








   