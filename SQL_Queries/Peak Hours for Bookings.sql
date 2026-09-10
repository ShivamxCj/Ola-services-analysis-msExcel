SELECT Hour_of_Day, COUNT(*) AS Booking_Count
FROM OlaBooking	
GROUP BY Hour_of_Day	
ORDER BY Booking_Count DESC;	
