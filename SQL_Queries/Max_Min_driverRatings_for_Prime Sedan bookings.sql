--Find the maximum and minimum driver ratings for Prime Sedan bookings

USE [Ola Booking];

SELECT Max(Driver_Ratings) Max_Driver_Rating,MIN(Driver_Ratings) Min_Driver_Rating
FROM OlaBooking
WHERE Vehicle_Type='Prime Sedan';