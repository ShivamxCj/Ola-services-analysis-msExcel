USE [Ola Booking];

SELECT Booking_Status,COUNT(*) Total_Booking_By_Status FROM OlaBooking GROUP BY Booking_Status;