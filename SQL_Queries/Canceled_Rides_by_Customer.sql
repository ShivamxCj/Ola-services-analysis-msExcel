USE [Ola Booking];

SELECT Canceled_Rides_by_Customer ,COUNT(*) Reason_Count FROM OlaBooking 
WHERE Booking_Status='Canceled by Customer'AND Canceled_Rides_by_Customer IS NOT NULL
GROUP BY Canceled_Rides_by_Customer
ORDER BY Reason_Count DESC;