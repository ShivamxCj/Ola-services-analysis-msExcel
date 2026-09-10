USE [Ola Booking];

SELECT Canceled_Rides_by_Driver ,COUNT(*) Reason_Count FROM OlaBooking 
WHERE Booking_Status='Canceled by Driver'AND Canceled_Rides_by_Driver IS NOT NULL
GROUP BY Canceled_Rides_by_Driver
ORDER BY Reason_Count DESC;