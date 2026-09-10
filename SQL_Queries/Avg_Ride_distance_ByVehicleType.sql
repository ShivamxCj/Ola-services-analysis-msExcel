USE [Ola Booking];

SELECT Vehicle_Type, AVG(Ride_Distance) Avg_Ride_distance
FROM OlaBooking
GROUP BY Vehicle_Type;