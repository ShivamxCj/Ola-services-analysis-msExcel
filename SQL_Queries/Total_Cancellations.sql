USE [Ola Booking];

SELECT COUNT(*) Total_Cancellations FROM OlaBooking WHERE Booking_Status <> 'Success';

