SELECT * FROM new_project.hospitality;
## Room Rate Analysis:
## What is the average room rate per month?
select check_in_month, round(avg(avg_room_rate),2) monthly_avg_rate
from hospitality
group by check_in_month
order by monthly_avg_rate desc;

## Which property has the highest and lowest average room rates?
select property, round(avg(avg_room_rate),2) as avg_room_rate
from hospitality
group by property
order by avg_room_rate desc
limit 1;
select property, round(avg(avg_room_rate),2) as avg_room_rate
from hospitality
group by property
order by avg_room_rate asc
limit 1;

## How do the room rates vary between weekdays and weekends?
select `rate type`, round(avg(avg_room_rate),2) as avg_room_rate
from hospitality
group by `rate type`;

##Reservation and Check-In Analysis:partition by property
##What is the average duration of stay based on the room type and property?
select property, room_type, round(avg(stay_duration),2)  as avg_duration
from hospitality
group by Property, room_type
order by property;

##Is there a correlation between the number of adults/children and the room type?
select room_type, sum(adults) as Adults, sum(children) as children
from hospitality
group by room_type;

##How does the check-in pattern differ across various booking channels?
select booking_channel, room_type, count(reservation_id) as total_bookings
from hospitality
group by booking_channel, room_type
order by booking_channel, total_bookings;

##How does the completion status relate to special requests?
select reservation_status, special_requests_flag, count(reservation_id) as status_count
from hospitality
group by reservation_status, special_requests_flag
order by reservation_status, status_count;

##Which room type or property receives the most special requests?
select room_type, count(reservation_id) as reservation_made
from hospitality
where special_requests_flag = 'no'
group by room_type
order by reservation_made desc
limit 1;

##Are special requests more common during weekdays or weekends?
select `rate type`, special_requests_flag, count(reservation_id) as reservation_made
from hospitality
where special_requests_flag = 'yes'
group by `rate type`, special_requests_flag
order by `Rate Type`, reservation_made;

##Property and Rate Type Analysis:

##Which property has the highest occupancy rate or the most bookings?
select property, sum(children+adults) as occupant
from hospitality
group by property 
order by occupant desc
limit 1;

##Compare the rate types across different properties.
select property, `rate type`, count(reservation_id) as Total_reservation
from hospitality
group by property, `rate type`
order by property, total_reservation;

##Analyze the advanced booking trends based on the rate type.
select `rate type`, advanced_booking, count(reservation_id) as booking_trend
from hospitality
group by `rate type`, advanced_booking
order by advanced_booking;

##Cancellation and No-Show Analysis:

##What's the frequency of no-shows across different properties and room types?
select property, room_type, count(reservation_id) as show_cancelled
from hospitality
where reservation_status = 'no-show'
group by property, room_type
order by property;
##Do cancellations or no-shows relate to specific booking channels or special requests?

