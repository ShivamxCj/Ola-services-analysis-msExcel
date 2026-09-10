SELECT Vehicle_Type	, 
       COUNT(*) AS Total_Bookings,	
       SUM(CASE WHEN Booking_Status <> 'Success' THEN 1 ELSE 0 END) AS Cancellations,	
       ROUND((SUM(CASE WHEN Booking_Status <> 'Success' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)),2) AS Cancellation_Rate_Percent
FROM OlaBooking	
GROUP BY Vehicle_Type	
ORDER BY Cancellation_Rate_Percent DESC;	
