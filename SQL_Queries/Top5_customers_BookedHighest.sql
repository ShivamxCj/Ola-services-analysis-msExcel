/*Top 5 customers who booked the highest number of rides*/

USE [Ola Booking];

SELECT TOP 5 Customer_ID, COUNT(Booking_ID) Total_Rides
FROM OlaBooking
GROUP BY Customer_ID
ORDER BY Total_Rides DESC;