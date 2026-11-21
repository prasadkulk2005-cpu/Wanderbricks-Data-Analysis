%sql
 select count(*) as total_countries from samples.wanderbricks.countries;
  select count(*) as total_users from samples.wanderbricks.users;
  select count(*) as total_booking_updates from samples.wanderbricks.booking_updates;
 select count(*) as total_bookings from samples.wanderbricks.bookings;
  select count(*) as total_hosts from samples.wanderbricks.hosts; 
  select count(*) as total_anenities from samples.wanderbricks.amenities; 
  select count(*) as total_properties from samples.wanderbricks.properties;
  select count(*) as total_property_images from samples.wanderbricks.property_images; 
  
 
 
 
-- Check booking Status
select status, count(*) as total_booking
from samples.wanderbricks.bookings
group by status; 


-- Total Revenue 
select round(sum(total_amount),2) as total_revenue
from samples.wanderbricks.bookings
where status = 'confirmed'; 

-- Total Booking Value
select count(*) as total_booking
from samples.wanderbricks.bookings
where status = 'confirmed';

-- avg booking value 
select round(avg(total_amount),2) as total_revenue
from samples.wanderbricks.bookings 
where status = 'confirmed';


-- canclled booking & total booking 
select count(*) as total_booking 
from samples.wanderbricks.bookings;

select count(booking_id) as total_cancelled_booking
from samples.wanderbricks.booking_updates
where status = 'cancelled';

-- top 5 cities by properties
select d.destination as city, count(p.property_id) as property_count
from samples.wanderbricks.properties p
join samples.wanderbricks.destinations d
  on p.destination_id = d.destination_id
group by d.destination
order by property_count desc
limit 5;

-- average property price
select round(avg(base_price),2) as avg_price
from samples.wanderbricks.properties;

-- top 5 hosts  property count
select host_id, count(property_id) as property_count
from samples.wanderbricks.properties
group by host_id
order by property_count desc
limit 5;

-- top 5 Cities By Revenue
select d.destination as city, round(sum(total_amount),2) as total_revenue
from samples.wanderbricks.bookings b
join samples.wanderbricks.properties p
  on b.property_id = p.property_id
  join samples.wanderbricks.destinations d
  on p.destination_id = d.destination_id
group by d.destination
order by total_revenue desc
limit 5;

-- Booking by property Type
select property_type, count(*) as total_bookings
from samples.wanderbricks.bookings b
join samples.wanderbricks.properties p
on b.property_id = p.property_id
group by property_type
order by total_bookings desc
limit 5;

-- Monthly booing trend
select year(created_at) as year, 
month (created_at) as month, 
count(*) as total_bookings
from samples.wanderbricks.bookings
group by year, month
order by month desc
limit 5;

-- Booking Canclled By City
select d.destination as city, count(*) as total_bookings, 
count_if(b.status = 'cancelled') as total_cancelled_bookings
from samples.wanderbricks.bookings b
join samples.wanderbricks.properties p
  on b.property_id = p.property_id
  join samples.wanderbricks.destinations d
  on d.destination_id = p.destination_id
  group by d.destination_id, d.destination
  order by total_cancelled_bookings desc; 

-- Most popular ameneties 
select a.name, count(*) as total_amenities
from samples.wanderbricks.amenities a
join samples.wanderbricks.property_amenities pa
  on a.amenity_id = pa.amenity_id
group by a.name
order by total_amenities desc; 