# Retail_Transaction
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

