--Retrieve all rides where payment was made using UPI

USE [Ola Booking];

SELECT * FROM OlaBooking
WHERE Payment_Method='UPI';