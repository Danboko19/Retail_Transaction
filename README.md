# HOSPITALITY
## AIMS AND OBJECTIVE
1. To determine the trend in booing parterns
2. To determine the most profitable booking agency
3. To determine the busiest property during the weekends and weekdays
4. To determine the reason for show canceling if related to any booking pattern or property usage
## DATA SOURCE
Data was gotten kaggle has an experimental data for educational strictly under the advised from my mentor as to sharpen my data analysis skills
## DATA PREPARATION AND TRANSFORMATION
The data was gotten uncleaned though not that unstructured by some basic cleaning were needed to be done to complete the analysis with ease. Cleaning like text formatting, creating new columns and also erase some unwanted prefix that will not employed by SQL. Two new columns were added which check_in_months, and check_out_months, "$" were removed from the 'avg_dail_rate' columns and also the 'check_in_date' and 'date' were rightly formatted to "MDY" format.
## COLUMNS EXPLANATION
Avg_daily_rate: This the rate of total sum paid by the occupant of the room on a day divided the number of occupant and its denoted in "$".

Reservation_Id: This is a unique Id(identity number) given to each reservation made, this is unique which means it cant be repeated.

Check_in_date: This is the exact date each reservation was filled, thats the occupant park in into the reservation.

Check_in_month: This is the exact month of paarking in.

Stay_duration: This is the time spent for each reservation and denoted in days.

Children: This is the total number occubant by children.

Adult: THis is the total number of adult present in each reservation made.

Room_type: This is type of room allocated to each reservation, and these are meausred by the type facility present and how spacious the rooms are.

Special_request_flags: This only shows if a special request were made by the occupant. And its a boolean data.

Booking_cjannel: these are the name of the channel each reservation was made e.g Agency, call center e.t.c.

Reservation_status: This shows the condition of the reseravation(i.e the status of the shows, if they were cancelled, completed or reduction im the number of the participant).

Advanced_booking: this explains the type of booking made, if its booking on arrival or the booing was done inadvanced, this is also a boolean data type with only a yes and no options.

Property: This the name of the property used for the reservation

Date: This is the booking date

Rate_type: The days of the week the shows was held, and give only two priors i.e weekday and weekend(which saturdays and sundays fall under)

## DATA ANALYSIS RESULT
### Room Rate Analysis:
#### What is the average room rate per month?
The average avg_dialy rate of each month are as show under the table below

![Table 1 1](https://github.com/Danboko19/Retail_Transaction/assets/148493509/9db42258-2955-428b-9d86-89913833c873)
#### Which property has the highest and lowest average room rates?#
As show from the query below the room with the highest daily room rate is The sankey property with average daily rate of "$184.99"

![Capture 2](https://github.com/Danboko19/Retail_Transaction/assets/148493509/c98b57df-46b1-44b8-887d-fcadbfcefff0)
And the property with lowest and affordable room rate was The Chord Property with an average daily rate of "$88.21" as shown below

![Capture 3](https://github.com/Danboko19/Retail_Transaction/assets/148493509/a992104a-2c7d-4ee4-8313-3bc50e109759)
#### How do the room rates vary between weekdays and weekends?
The average room rate was high during the weekend compared to the weekdays with a rate of "$160.29" during the weekend and "$142" during the weekdays

![capture 4](https://github.com/Danboko19/Retail_Transaction/assets/148493509/dccb46ad-7db8-458b-a1b9-017b735f7e6c)
### Reservation and Check-In Analysis:partition by property
#### What is the average duration of stay based on the room type and property?
The average during of stays in all room type of each property are shown in the diagram below, which are measured in days

![avg rate base on property nd room type](https://github.com/Danboko19/Retail_Transaction/assets/148493509/96b66c77-9cf3-405f-b841-b2b448a43866)
#### Is there a correlation between the number of adults/children and the room type?
The data shows no correlation between the room type and the type of occupant as there are almost the same number of children and adult in each room, but it can be shown in the image that the double room was the one with the most occupant with a total number of "64005" Adult and "63651" children occupant

![Is there a correlation between the number of adults children and the room type](https://github.com/Danboko19/Retail_Transaction/assets/148493509/dd68b99e-73c8-4d42-a260-e22e1e54c59a)

#### How does the completion status relate to special requests?
As show by the table below there was no correlation between special request and show completion status.

![special request complerion](https://github.com/Danboko19/Retail_Transaction/assets/148493509/0cf5d9da-ef77-462c-a40b-83a5dde9d481)

#### Which room type or property receives the most special requests?
The room type with the most special request received is the double room which was also the room with the highest occubant which shows why it was the one with the most specail request received with a request of "12689".

![room with the most special request](https://github.com/Danboko19/Retail_Transaction/assets/148493509/a782191e-7c00-4f92-a8dd-4eb6c4fe118b)

#### Are special requests more common during weekdays or weekends?
Special request were made the most during the weekdays more thn the weekends but if we are to count the days in the weekend to the weekdays, there are only two days in the weekend and five(5) days in the weekdays, they we can say each days in the weekend received more special request compare to the days in the weekdays.

![special request days to weekend](https://github.com/Danboko19/Retail_Transaction/assets/148493509/bd97bfaa-c41d-4da2-bbb1-b795f152c1df)

### Property and Rate Type Analysis:
#### Which property has the highest occupancy rate or the most bookings?
The sankey was the property with the most occupancy rate as shown in the query below.

![occupant rate](https://github.com/Danboko19/Retail_Transaction/assets/148493509/65697d90-81da-4ff1-8d1a-feaf19e285dd)

#### Compare the rate types across different properties.
the occupant in each property both during the weekends and weekdays are shown in the imade below

![weekdays weekends occupant in each property](https://github.com/Danboko19/Retail_Transaction/assets/148493509/64edef58-180b-4987-bfa1-542b75760522)

#### Analyze the advanced booking trends based on the rate type.
The advanced booking trend during the weekend and weekdays has being analyzed and shown in the image below

![advanced booing rate](https://github.com/Danboko19/Retail_Transaction/assets/148493509/640911c0-b038-48ae-9912-46ae57b8fb00)

### Cancellation and No-Show Analysis:
#### What's the frequency of no-shows across different properties and room types?
The rate of show canceled i each room across each property are as shown respectively

![no shows across each property](https://github.com/Danboko19/Retail_Transaction/assets/148493509/97a94589-e8c5-4a56-ad1d-1be7aeda4e2f)
